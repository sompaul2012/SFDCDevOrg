@IsTest
private class AccountProcessorTest {
    
    private static testMethod void testAccountProcessor()
    {
        List<Id> accntList = new List<Id>();
        accntList = createAccount();
        Test.startTest();
        AccountProcessor.countContacts(accntList);
        Test.stopTest();
    }
    private static List<Id> createAccount()
    {
        List<Id> accntList = new List<Id>();
        for(Integer i=0;i<10;i++)
        {
            Account a = new Account(Name='Test Account'+i);
            insert a;
            for(Integer j=0;j<5;j++)
            {
                Contact con = new Contact(LastName ='Test Contact'+j,AccountId=a.Id);
                insert con;
            }
            accntList.add(a.Id);
        }
        //insert accntList;
        return accntList;
    }

}