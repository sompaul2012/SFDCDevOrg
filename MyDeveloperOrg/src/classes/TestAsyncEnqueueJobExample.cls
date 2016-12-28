@isTest
public class TestAsyncEnqueueJobExample {

    static testmethod void test1()
    {
        Test.startTest();
        	System.enqueueJob(new AsyncEnqueueJobExample());
        Test.stopTest();
        
        Account a =[select Name from Account where Name='TestAccountJob1_TA1' limit 1];
        system.assertNotEquals(null, a);
        system.assertEquals('TestAccountJob1_TA1', a.Name);
    }
}