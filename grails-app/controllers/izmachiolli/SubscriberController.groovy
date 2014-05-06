package izmachiolli

import liquibase.util.csv.CSVReader

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubscriberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subscriber.findAllByRL(session.getAttribute("rL"),params), model:[subscriberInstanceCount: Subscriber.count()]
    }

    def show(Subscriber subscriberInstance) {
        respond subscriberInstance
    }

    def create() {
        respond new Subscriber(params)
    }

    @Transactional
    def save(Subscriber subscriberInstance) {

        if (subscriberInstance == null) {
            notFound()
            return
        }
        subscriberInstance.rL=session.getAttribute("rL");

        if (subscriberInstance.hasErrors()) {
            respond subscriberInstance.errors, view:'create'
            return
        }

        subscriberInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subscriberInstance.label', default: 'Subscriber'), subscriberInstance.id])
                redirect subscriberInstance
            }
            '*' { respond subscriberInstance, [status: CREATED] }
        }
    }

    def edit(Subscriber subscriberInstance) {
        respond subscriberInstance
    }

    @Transactional
    def update(Subscriber subscriberInstance) {
        if (subscriberInstance == null) {
            notFound()
            return
        }

        if (subscriberInstance.hasErrors()) {
            respond subscriberInstance.errors, view:'edit'
            return
        }

        subscriberInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Subscriber.label', default: 'Subscriber'), subscriberInstance.id])
                redirect subscriberInstance
            }
            '*'{ respond subscriberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Subscriber subscriberInstance) {

        if (subscriberInstance == null) {
            notFound()
            return
        }

        subscriberInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Subscriber.label', default: 'Subscriber'), subscriberInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subscriberInstance.label', default: 'Subscriber'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def showAll(){

    }

    def createFromFile(){

    }

    def saveFromCSV(){
        def f = request.getFile('myFile')
        if (f.empty) {
            flash.message = 'file cannot be empty'
            render(view: 'createFromFile')
            return
        }

        f.inputStream.eachCsvLine { tokens ->
            save(new Subscriber(tokens[0],tokens[1],new Date()))
            println("ash: save "+tokens[0])
        }

    }
}
