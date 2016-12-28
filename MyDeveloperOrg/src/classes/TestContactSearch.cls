@isTest
private class TestContactSearch {
	@isTest
    static void consearch()
    {
        List<Id> conIds= ContactsCreate();
       	Contact con = [select Id,Name,LastName,MailingPostalCode from Contact where Id =: conIds.get(0)]; 
        Test.startTest();
        List<Contact> con1 = ContactSearch.searchForContacts(con.LastName, con.MailingPostalCode);
        Test.stopTest();
        System.assertEquals('Sunday0 Test0', con1.get(0).Name);
        
    }
    static List<Id> ContactsCreate()
    {
        List<Id> conid = new List<Id>();
        List<Contact> conl = new List<Contact>();
        for(integer i=0;i<4;i++)
        {
            Contact c = new Contact(LastName = 'Test'+i,MailingPostalCode ='BD07',FirstName='Sunday'+i);
            conl.add(c);
        }
        insert conl;
        for(Contact c: conl)
        {
            conid.add(c.Id);
        }
        return conid;
    }
}