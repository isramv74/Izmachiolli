package izmachiolli

class CampaignController {

    //def index() {}
    def crear(){}
    def probar(){
        Campaign cmp = new Campaign()
        cmp.properties = params
        cmp.save()

        [cmp:cmp]
    }
    def test(){
        render params.emailT
    }
    def preview(){
        def htmlContent = params.cmp.htmlText
        render text: htmlContent, contentType:"text/html", encoding:"UTF-8"
    }
}
