package izmachiolli

class CampaignController {

    //def index() {}
    def crear(){}
    def probar(){}
    def test(){

        render params.emailT

    }
    def preview(){
        def htmlContent = '<html><head></head><body>HOLA MUNDO</body></html>'
        render text: htmlContent, contentType:"text/html", encoding:"UTF-8"
    }

    static scaffold = Campaign
}
