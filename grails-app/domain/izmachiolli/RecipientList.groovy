package izmachiolli

class RecipientList {

    static constraints = {
        name blank: false
        confirmUrl  nullable: true, url:true
        subscribeUrl nullable: true, url:true
        unsubscribeUrl nullable: true, url:true
        thankYouSubject nullable: true
        thankYouMessage nullable: true, maxSize: 5000
        goodbyeSubject  nullable: true
        goodbyeMessage  nullable: true, maxSize: 5000
        confirmationSubject  nullable: true
        confirmationMessage  nullable: true, maxSize: 5000
    }

    static mapping = {
        id generator: 'increment',name:'id'
    }

    static belongsTo = [app:App]
    Integer id
 //   Integer userId
    String name
    Boolean optIn
    String confirmUrl
    String subscribeUrl
    String unsubscribeUrl
    Boolean thankYou
    String thankYouSubject
    String thankYouMessage
    Boolean goodbye
    String goodbyeSubject
    String goodbyeMessage
    String confirmationSubject
    String confirmationMessage
    Boolean unsubscribeAllLists
    //String customFields
    //Integer prevCount
    //Integer currentlyProcessing
    //Integer totalRecords
}
