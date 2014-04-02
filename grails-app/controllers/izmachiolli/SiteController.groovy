package izmachiolli



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Site.list(params), model: [siteInstanceCount: Site.count()]
    }

    def show(Site siteInstance) {
        respond siteInstance
    }

    def create() {
        respond new Site(params)
    }

    @Transactional
    def save(Site siteInstance) {
        if (siteInstance == null) {
            notFound()
            return
        }
        if (siteInstance.hasErrors()) {
            respond siteInstance.errors, view: 'create'
            return
        }

        siteInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'siteInstance.label', default: 'Site'), siteInstance.id])
                redirect siteInstance
            }
            '*' { respond siteInstance, [status: CREATED] }
        }
    }

    def edit(Site siteInstance) {
        respond siteInstance
    }

    @Transactional
    def update(Site siteInstance) {
        if (siteInstance == null) {
            notFound()
            return
        }

        if(siteInstance.header!=null && !validateHTML(siteInstance.header))
            siteInstance.errors.reject('site.header.format',['header', 'class Site'] as Object[],'Error');
        if(siteInstance.footer!=null && !validateHTML(siteInstance.footer))
            siteInstance.errors.reject('site.footer.format',['footer', 'class Site'] as Object[],'Error');
        if(siteInstance.left!=null && !validateHTML(siteInstance.left))
            siteInstance.errors.reject('site.left.format',['left', 'class Site'] as Object[],'Error');
        if(siteInstance.right!=null && !validateHTML(siteInstance.right))
            siteInstance.errors.reject('site.right.format',['right', 'class Site'] as Object[],'Error');

        if (siteInstance.hasErrors()) {
            respond siteInstance.errors, view: 'edit'
            return
        }

        siteInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'site.updated.message')
                redirect siteInstance
            }
            '*' { respond siteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Site siteInstance) {

        if (siteInstance == null) {
            notFound()
            return
        }

        siteInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Site.label', default: 'Site'), siteInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'siteInstance.label', default: 'Site'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def boolean validateHTML(String text){
         try{
            def doc = new XmlSlurper().parseText(text)
            return true
        }catch(Exception e){
            println e.message
            return false
        }
    }

    def preview(Site siteInstance){
        render (template: 'site', bean: siteInstance)
    }
}