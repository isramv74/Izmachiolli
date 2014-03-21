package izmachiolli

class Campaign {
    Integer id

    static constraints = {
        fromName blank: false
        fromEmail blank: false, email: true
        replyTo blank: false, email: true
        title blank: false
        plainText blank: false
        htmlText blank: false
        htmlText(maxSize: 5000)
        plainText(maxSize: 5000)
        sendDate nullable:true
        timeZone nullable:true
    }

    static mapping = {
        id generator: 'increment',name:'id'

    }

//    Integer userId
    static belongsTo = [app:App]
    String fromName
    String fromEmail
    String replyTo
    String title
    String plainText
    String htmlText
    static hasMany = [links:Link]
    //Boolean sent
    //Integer toSend
   // static hasMany = [toSendLists:RecipientList]
//    Integer recipients
//    String timeOutCheck
//    String opens
//    Integer wysiwyg
    Date sendDate
    //String lists
    String timeZone
//    String errores
  //  Boolean bounceSetup
//    Boolean complaintSetup

}
