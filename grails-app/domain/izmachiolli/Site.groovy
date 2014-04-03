package izmachiolli

class Site {

    static constraints = {
        header(maxSize: 5000, nullable:true)
        left(maxSize: 5000, nullable:true)
        right(maxSize: 5000, nullable:true)
        footer(maxSize: 5000, nullable:true)
        headerHeight (nullable:true)
        footerHeight (nullable:true)
        leftWidth (nullable:true)
        rightWidth (nullable:true)
    }

    String header
    Integer headerHeight
    String left
    Integer leftWidth
    String right
    Integer rightWidth
    String footer
    Integer footerHeight
}
