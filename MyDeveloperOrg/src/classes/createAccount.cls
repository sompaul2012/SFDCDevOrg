@RestResource(urlMapping='/v1/createAccount/*')
global with sharing class createAccount {
@HttpPost
    global static string createAccount(string AccName, Id accId)
    {
        string status;
        try
        {
        Account a = new Account();
        a.Name = AccName;
        a.Integration_Id__c = accId;
        insert a;
            status='Success';
        }
        catch(DMLEXception e)
        {
            status='Error';
        }
        List<Account> ListOfAcc = new List<Account>([select Name,
                                                     Integration_Id__c,Id from Account where Integration_Id__c=:accId]);
        //string returnResponse = JSON.serialize(ListOfAcc);
        
        system.XmlStreamWriter w = new system.XmlStreamWriter();
        w.writeStartDocument(null, '1.0');
        w.writeStartElement(null, 'Accounts', null);
        
        for(Account act:ListOfAcc)
        {
            w.writeStartElement(null, 'Account', null);//<Account>
            w.writeStartElement(null, 'Name', null);//<Name>
            w.writeCharacters(act.Name);//value
            w.writeEndElement();//</Name>
            w.writeStartElement(null, 'INTEGRATION_Id', null);
            w.writeCharacters(act.Integration_Id__c);
            w.writeEndElement();
            w.writeStartElement(null, 'AccountId', null);
            w.writeCharacters(act.Id);
            w.writeEndElement();
            w.writeStartElement(null, 'Status', null);
            w.writeCharacters(status);
            w.writeEndElement();
            w.writeEndElement();//</Account>
            
        }
        w.writeEndElement();
        w.writeEndDocument();
        System.debug('xmlstream writer' + w);
        string xmlOutput = w.getXmlString();
        System.debug('xmlstearm writer in string' + xmlOutput);
        w.close();
        
        return xmlOutput;
    }   
}