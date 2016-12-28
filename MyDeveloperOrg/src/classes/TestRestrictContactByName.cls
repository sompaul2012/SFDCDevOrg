@isTest
private class TestRestrictContactByName {

    private static testmethod void testContacttrigger()
    {
        Contact c = new Contact(LastName='INVALIDNAME');
        
        Test.startTest();
        Database.SaveResult srList = Database.insert(c, false);
        Test.stopTest();
        
        system.assert(!srList.isSuccess());
        system.assert(srList.getErrors().size()>0);
        //system.assertEquals('The Last Name INVALIDNAME is not allowed for DML',srList.getErrors()[0].getMessage());
    }
}