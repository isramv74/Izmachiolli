package izmachiolli

import com.amazonaws.services.simpleemail.model.Body
import com.amazonaws.services.simpleemail.model.Content
import com.amazonaws.services.simpleemail.model.Destination
import com.amazonaws.services.simpleemail.model.Message
import com.amazonaws.services.simpleemail.model.SendEmailRequest

class CampaignController {
    def amazonWebService
    //def index() {}
    def crear(){}
    def probar(){
        App ap=App.find{appName=="Ap Prueba"}

        Campaign cmp = new Campaign()
        cmp.app=ap
        cmp.title = params.title
        cmp.fromName = params.fromName
        cmp.fromEmail = params.fromEmail
        cmp.replyTo = params.replyTo
        cmp.htmlText = params.htmlText
        cmp.plainText = params.plainText
        cmp.save()

        if(cmp.hasErrors()){
            println cmp.errors
            respond cmp,view:'crear'
            return
        }
        //Se buscan links en htmlText y se guardan
        def html = cmp.htmlText
        def doc = new XmlSlurper().parseText(html)
        def lnks = []
        doc.'**'.findAll { it.name() == "a" && it.@ref}.each {
            Link lnk = new Link()
            lnk.cmp=cmp
            lnk.url="${it.@href.text()}"
            lnk.save()
            lnks.add(lnk)
        }

        [cmp:cmp,lnks:lnks]
    }
    def test(){
        def cmp = Campaign.get(params.idCmp)

        Destination destination = new Destination([params.emailT])
        Content subject = new Content(cmp.title)
        Body body = new Body().withHtml(new Content(cmp.htmlText))
        Message message = new Message(subject, body)
        amazonWebService.ses.sendEmail(new SendEmailRequest(cmp.fromEmail, destination, message))

    }
    def preview(){
        def htmlContent = Campaign.get(params.idCmp).htmlText
        render text: htmlContent, contentType:"text/html", encoding:"UTF-8"
    }

    def addLinks(){
        def sz=params.int("lnkSize")
        for (int i=0;i<sz;i++){
            def lnk=Link.get(params.get("lns["+i+"].id"))
            lnk.prettyUrl=params.get("lns["+i+"].prettyUrl")
            lnk.save()
        }
    }

    def schedule(){
        def cmp=Campaign.get(params.idCmp)
        cmp.sendDate=params.sendDate
        cmp.timeZone=params.timeZone
        println "Ash: "+cmp.timeZone+" "+cmp.sendDate
        cmp.save()
    }
}
