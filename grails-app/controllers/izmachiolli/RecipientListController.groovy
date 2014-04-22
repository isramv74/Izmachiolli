package izmachiolli



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RecipientListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RecipientList.list(params), model: [recipientListInstanceCount: RecipientList.count()]
    }

    def show(RecipientList recipientListInstance) {
        respond recipientListInstance
    }

    def create() {
        respond new RecipientList(params)
    }

    @Transactional
    def save(RecipientList recipientListInstance) {
        if (recipientListInstance == null) {
            notFound()
            return
        }

        validarDatos(recipientListInstance);

        if (recipientListInstance.hasErrors()) {
            respond recipientListInstance.errors, view: 'create'
            return
        }

        recipientListInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recipientListInstance.label', default: 'RecipientList'), recipientListInstance.id])
                redirect recipientListInstance
            }
            '*' { respond recipientListInstance, [status: CREATED] }
        }
    }

    def edit(RecipientList recipientListInstance) {
        respond recipientListInstance
    }

    @Transactional
    def update(RecipientList recipientListInstance) {
        if (recipientListInstance == null) {
            notFound()
            return
        }

        if (recipientListInstance.hasErrors()) {
            respond recipientListInstance.errors, view: 'edit'
            return
        }

        recipientListInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RecipientList.label', default: 'RecipientList'), recipientListInstance.id])
                redirect recipientListInstance
            }
            '*' { respond recipientListInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RecipientList recipientListInstance) {

        if (recipientListInstance == null) {
            notFound()
            return
        }

        recipientListInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RecipientList.label', default: 'RecipientList'), recipientListInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recipientListInstance.label', default: 'RecipientList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    private void validarDatos(RecipientList recListInst)
    {
        if(recListInst.thankYou && (recListInst.thankYouMessage == null || recListInst.thankYouSubject==null)){
            recListInst.errors.reject('recipientList.thankYou.missing',['thankYouMessage', 'class RecipientList'] as Object[],'Error');
        }
        if(recListInst.optIn && (recListInst.confirmUrl == null || recListInst.confirmationSubject==null || recListInst.confirmationMessage==null)){
            recListInst.errors.reject('recipientList.confirmation.missing',['confirmationMessage', 'class RecipientList'] as Object[],'Error');
        }
        if(recListInst.goodbye && (recListInst.goodbyeMessage == null || recListInst.goodbyeSubject == null || recListInst.unsubscribeUrl==null)){
            recListInst.errors.reject('recipientList.goodbye.missing',['goodbyeMessage', 'class RecipientList'] as Object[],'Error');
        }

    }
}
