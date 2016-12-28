@isTest(seeAllData=false)
private class AddPrimaryContactTest {

    @testSetup
    static void setup()
    {
        List<Account> testAcnlist = new List<Account>();
        for(Integer i=0;i<50;i++)
        {
            Account a = new Account(Name='Test'+i,BillingState='NY');
            testAcnlist.add(a);
        }
        for(Integer i=0;i<50;i++)
        {
            Account a = new Account(Name='Test'+i,BillingState='CA');
            testAcnlist.add(a);
        }
        insert testAcnlist;
       Contact cnt = new Contact(LastName='som',FirstName='paul');
        insert cnt;
    }
    static testmethod void testenqueuebale()
    {
        Contact con = [select Id,LastName,Email from Contact where lastname='som' limit 1];
        AddPrimaryContact apc = new AddPrimaryContact(con,'CA');
        Test.startTest();
        system.enqueueJob(apc);
        Test.stopTest();
        //system.assertNotEquals(null, [select Id,(Select LastName from contacts) from Account where BillingCity='CA']);
    }
}