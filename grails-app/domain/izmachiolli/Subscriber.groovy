package izmachiolli

class Subscriber {

    static constraints = {
        email blank: false, email: true
        name blank: false
    }

    static mapping = {
        id generator: 'increment',name:'id'
    }

    Integer id
    //Integer userId
    String name
    String email
    //String customFields
    //Integer unsubscribed
    //Integer bounced
    //Integer bounceSoft
    //Integer complaint
    //Integer lastCampaign
    //Integer lastAres
    //Date timestamp
    Date joinDate
    //Integer confirmed
}
