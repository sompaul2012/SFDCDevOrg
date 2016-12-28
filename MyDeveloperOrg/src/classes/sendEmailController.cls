public with sharing class sendEmailController {

public string [] toAddress {get;set;}
public string msgBody {get;set;}
public string msgSubject {get;set;}
public string status{get;set;}

 /*   public string [] toadd;
    public string msgbody;
    public string subject;
public void gettoAddress(string [] add)
{
    toadd[0]= add[0];
}
public void getmsgbody(string msgbod)
{
    msgbody = msgbod;
}
public void getmsgsubject(string subj)
{
    subject= subj;
}
*/
public PageReference sendMail() {
        // Define the email
        //Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage(); 

        // Sets the paramaters of the email
        //email.setSubject( msgSubject);
        //email.setToAddresses( toAddress );
        //email.setPlainTextBody( msgBody );
    
        // Sends the email
       // Messaging.SendEmailResult [] r = 
            //Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});   
        status = msgSubject+msgBody;
        return null;
    }
}