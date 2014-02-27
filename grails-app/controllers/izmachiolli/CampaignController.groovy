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
        Campaign cmp = new Campaign()
        cmp.properties = params
        cmp.save()
        [cmp:cmp]
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
}
