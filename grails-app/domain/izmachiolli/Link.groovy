package izmachiolli

class Link {

    static constraints = {
    }

    String url
    String prettyUrl
    static belongsTo = [cmp:Campaign]
}
