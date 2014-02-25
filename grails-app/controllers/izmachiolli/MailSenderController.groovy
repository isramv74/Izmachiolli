package izmachiolli

import com.amazonaws.services.simpleemail.model.*
import grails.plugin.awssdk.AmazonWebService

class MailSenderController {

    def amazonWebService

    def index() {

        String source = 'israel@draconiantech.com'
        Destination destination = new Destination(['asanchez@draconiantech.com'])
        Content subject = new Content('Some subject...')
        Body body = new Body().withHtml(new Content('''Hi,<br />
    <br />
    Some <b>HTML</b> body...
    '''))
        Message message = new Message(subject, body)
        amazonWebService.ses.sendEmail(new SendEmailRequest(source, destination, message))

    }
}
