import izmachiolli.App

class BootStrap {

    def init = { servletContext ->
        new App(appName:"Ap Prueba").save(failOnError: true)
    }
    def destroy = {
    }
}
