package izmachiolli

import org.springframework.web.util.HtmlUtils

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

        if(siteInstance.header!=null){
            if(!validateHTML(siteInstance.header))
                siteInstance.errors.reject('site.header.format',['header', 'class Site'] as Object[],'Error');
            else if(siteInstance.headerHeight==null)
                siteInstance.errors.reject('site.headerHeight.blank',['headerHeight', 'class Site'] as Object[],'Error');
        }
        if(siteInstance.footer!=null){
            if(!validateHTML(siteInstance.footer))
                siteInstance.errors.reject('site.footer.format',['footer', 'class Site'] as Object[],'Error');
            else if(siteInstance.footerHeight==null)
                siteInstance.errors.reject('site.footerHeight.blank',['footerHeight', 'class Site'] as Object[],'Error');
        }

        if(siteInstance.left!=null){
            if(!validateHTML(siteInstance.left))
                siteInstance.errors.reject('site.left.format',['left', 'class Site'] as Object[],'Error');
            else if(siteInstance.leftWidth==null)
                siteInstance.errors.reject('site.leftWidth.blank',['leftWidth', 'class Site'] as Object[],'Error');
        }

        if(siteInstance.right!=null){
            if(!validateHTML(siteInstance.right))
                siteInstance.errors.reject('site.right.format',['right', 'class Site'] as Object[],'Error');
            else if(siteInstance.rightWidth==null)
                siteInstance.errors.reject('site.rightWidth.blank',['rightWidth', 'class Site'] as Object[],'Error');
        }

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
        def header=siteInstance.header!=null?siteInstance.header:""
        def headerH=(siteInstance.header!=null?siteInstance.headerHeight:0)
        def footer=siteInstance.footer!=null?siteInstance.footer:""
        def footerH=(siteInstance.footer!=null?siteInstance.footerHeight:0)
        def right=siteInstance.right!=null?siteInstance.right:""
        def rightW=(siteInstance.right!=null?siteInstance.rightWidth:0)
        def left=siteInstance.left!=null? siteInstance.left:""
        def leftW=(siteInstance.left!=null?siteInstance.leftWidth:0)
        render (template: 'site', model: [header:header,headerH:headerH,footer: footer,footerH:footerH,
                right: right,rightW:rightW,left:left,leftW:leftW,body:'<h1>Prueba Minisitio</h1>'])
    }
}
