public class xmlgenerator {
    
    public static string AccountContactXML()
    {
        List<Account> listacc = new List<Account>([select name,industry,type,id from Account where type=:'Prospect']);
       /* List<Contact> conlist = new List<Contact>();
        for(Account a:listacc)
        {
         	system.debug('account id'+ a.Id);
            try{
            Contact con = [select FirstName,LastName,LeadSource,email from Contact where AccountId=:a.Id];
            conlist.add(con);
            }
            catch(DMLException e)
            {
                system.debug('Account->'+a.Name+'has no contacts');
            }
            
        }*/
        string retxml = generateXML(listacc);
        return retxml;
    }
    public static string generateXML(List<Account> listacc)
    {
        system.XmlStreamWriter w = new system.XmlStreamWriter();
        w.writeStartDocument(null, '1.0');
        w.writeStartElement(null, 'Accounts', null);
        
        for(Account a:listacc)
        {
            w.writeStartElement(null, 'Account', null);
            w.writeStartElement(null, 'Name', null);
            w.writeCharacters(a.Name);
            w.writeEndElement();//</Name>
            w.writeStartElement(null, 'Type', null);
            w.writeCharacters(a.Type);
            w.writeEndElement();//</Type>
            w.writeStartElement(null, 'AccountId', null);
            w.writeCharacters(a.Id);
            w.writeEndElement();//</AccountId>
            w.writeStartElement(null, 'Contacts', null);
            List<Contact> conlist = new List<Contact>([select FirstName,LastName,LeadSource,email from Contact where AccountId=:a.Id ]);
            if(conlist.size()>0){
            for(Contact con:conlist)
            {
                //if(con.AccountId==a.Id){
                
                w.writeStartElement(null, 'Contact', null);
                w.writeStartElement(null,'FirstName', null);
                w.writeCharacters(con.FirstName);
                w.writeEndElement();
                w.writeStartElement(null,'LastName', null);
                w.writeCharacters(con.LastName);
                w.writeEndElement();
                w.writeStartElement(null,'Email', null);
                w.writeCharacters(con.Email);
                w.writeEndElement();
                w.writeEndElement();//</contact>
                //}
            }
            }
            w.writeEndElement();//</Contacts>
            w.writeEndElement();//<Account>
        }
        w.writeEndElement();//</Accounts>
        w.writeEndDocument();
        
        string xmloutput = w.getXmlString();
        system.debug('xml out put:'+xmloutput);
        w.close();
        return xmloutput;
    }

}