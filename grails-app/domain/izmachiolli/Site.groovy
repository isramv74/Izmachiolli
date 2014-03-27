package izmachiolli

class Site {

    static constraints = {
        header(maxSize: 5000, nullable:true)
        left(maxSize: 5000, nullable:true)
        right(maxSize: 5000, nullable:true)
        footer(maxSize: 5000, nullable:true)
    }

    String header
    String left
    String right
    String footer
}
