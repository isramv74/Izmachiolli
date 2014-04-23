package izmachiolli

class Subscriber {

    static constraints = {
        email email: true
    }

    static mapping = {
        id generator: 'increment',name:'id'
    }

    static belongsTo = [rL:RecipientList]
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
