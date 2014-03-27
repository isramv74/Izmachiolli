import izmachiolli.App
import izmachiolli.Site

class BootStrap {

    def init = { servletContext ->
        new App(appName:"Ap Prueba").save(failOnError: true)
        new Site().save()
    }
    def destroy = {
    }
}
