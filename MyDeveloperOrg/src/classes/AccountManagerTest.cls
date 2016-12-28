@IsTest
private class AccountManagerTest {

    @isTest
    static void testAccountContactDetails() 
    {
        Id AccountId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://ap2.salesforce.com/services/apexrest/Accounts/'+ AccountId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account accnt = AccountManager.getAccount();
        System.assertEquals('Test Account',accnt.Name);
        //system.assertEquals('');
        
    }
    static Id createTestRecord()
    {
        Account acc = new Account(Name='Test Account');
        List<Contact> conlist = new List<Contact>();
        insert acc;
        for(integer i = 0;i<4;i++)
        {
            Contact con = new Contact(LastName ='TestContact'+i,FirstName = 'TestFNCon'+i,AccountId= acc.Id);
            conlist.add(con);
        }
        insert conlist;
        return acc.Id;
    }
}