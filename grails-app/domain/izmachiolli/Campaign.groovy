package izmachiolli

class Campaign {

    static constraints = {
    }

//    Integer id
//    Integer userId
    static belongsTo = [app:App]
    String fromName
    String fromEmail
    String replyTo
    String title
    String plainText
    String htmlText
    Boolean sent
    Integer toSend
    static hasMany = [toSendLists:RecipientList]
//    Integer recipients
//    String timeOutCheck
//    String opens
//    Integer wysiwyg
    Date sendDate
    //String lists
//    String timeZone
//    String errores
    Boolean bounceSetup
    Boolean complaintSetup

}
