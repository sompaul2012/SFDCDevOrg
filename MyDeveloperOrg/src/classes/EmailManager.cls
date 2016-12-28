public with sharing class EmailManager{

    public String address{get;set;}
    public List <string> AddList;
    public String subject{get;set;}
    public String body{get;set;}
    
    public EmailManager(ApexPages.StandardController ldcon)
    {
        //address = '';
        for(Lead ld:[select email from Lead where Id =: ldcon.getId()])    
        {
            address = ld.Email;
        }
 
    }
public PageReference sendMail() 
{
Pagereference page = null;
string url;
url ='/'+'apex/thanks' ;
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {address};
mail.setToAddresses(toAddresses);
mail.setSubject(subject);
mail.setPlainTextBody(body);
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
page = new PageReference(url);
return page;     
}
}