package izmachiolli

import com.amazonaws.services.simpleemail.model.Body
import com.amazonaws.services.simpleemail.model.Content
import com.amazonaws.services.simpleemail.model.Destination
import com.amazonaws.services.simpleemail.model.Message
import com.amazonaws.services.simpleemail.model.SendEmailRequest
import org.xml.sax.SAXParseException

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CampaignController {
    def amazonWebService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Campaign.list(params), model: [campaignInstanceCount: Campaign.count()]
    }

    def show(Campaign campaignInstance) {
        respond campaignInstance
    }

    def create() {
        respond new Campaign(params)
    }

    @Transactional
    def save(Campaign campaignInstance) {
        def doc
        if (campaignInstance == null) {
            notFound()
            return
        }
        def html = campaignInstance.htmlText
        try{
            doc = new XmlSlurper().parseText(html)
        }catch(Exception e){
            println e.message
            campaignInstance.errors.reject('campaign.htmlText.format',['htmlText', 'class Campaign'] as Object[],'Error');
        }
        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view: 'create'
            return
        }

        campaignInstance.save flush: true

        def lnks = []
        doc.'**'.findAll { it.name() == "a" && it.@ref}.each {
            Link lnk = new Link()
            lnk.cmp=campaignInstance
            lnk.url="${it.@href.text()}"
            lnk.save flush:true
            lnks.add(lnk)
        }
        campaignInstance.links=lnks

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*' { respond campaignInstance, [status: CREATED] }
        }
    }

    def edit(Campaign campaignInstance) {
        respond campaignInstance
    }

    @Transactional
    def update(Campaign campaignInstance) {
        if (campaignInstance == null) {
            notFound()
            return
        }

        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view: 'edit'
            return
        }

        campaignInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*' { respond campaignInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Campaign campaignInstance) {

        if (campaignInstance == null) {
            notFound()
            return
        }

        campaignInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'campaign.label', default: 'Campaign'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def preview(Campaign campaignInstance){
        def htmlContent = campaignInstance.htmlText
        render text: htmlContent, contentType:"text/html", encoding:"UTF-8"
    }

    def test(Campaign campaignInstance){
        respond campaignInstance
    }

    def sendTest(Campaign campaignInstance){
        Destination destination = new Destination([params.testMail])
        Content subject = new Content(campaignInstance.title)
        Body body = new Body().withHtml(new Content(campaignInstance.htmlText))
        Message mssg = new Message(subject, body)
        try{
            amazonWebService.ses.sendEmail(new SendEmailRequest(campaignInstance.fromEmail, destination, mssg))
            flash.message = message(code: 'campaign.testSent.message')
        }catch(Exception e){
            flash.error = message(code: 'campaign.testError.message')
        }
        redirect action: "test", method: "GET"
    }

    def addLinks(Campaign campaignInstance){
        respond campaignInstance
    }

    def saveLinks(Campaign campaignInstance){
        def sz=params.int("lnkSize")
        for (int i=0;i<sz;i++){
            def lnk=Link.get(params.get("lns["+i+"].id"))
            lnk.prettyUrl=params.get("lns["+i+"].prettyUrl")
            lnk.cmp=campaignInstance
            lnk.save()
        }
    }
}
