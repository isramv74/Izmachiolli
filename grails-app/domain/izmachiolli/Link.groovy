package izmachiolli

class Link {

    static constraints = {
        url nullable: false, unique: true
        prettyUrl nullable: true
    }

    String url
    String prettyUrl
    static belongsTo = [cmp:Campaign]
}
