@isTest
private class LeadProcessorTest {

    @testSetup
    static void setup()
    {
        List<Lead> listofleads = new List<Lead>();
        for(Integer i=0;i<200;i++)
        {
            listofleads.add(new Lead(Company ='test',Status='Open - Not Contacted',LastName='test'+i,LeadSource='DurgaPuja'));
        }
        insert listofleads;
    }
    static testmethod void test()
    {
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200, [select count() from Lead where LeadSource='Dreamforce']);
    }
}