@isTest
private class DailyLeadProcessorTest {

    public static String CRON_EXP = '0 0 0 15 3 ? 2022';

    static testmethod void testLeadsource()
    {
        List<Lead> lstLead = new List<Lead>();
        for(Integer i=0;i<200;i++)
        {
            Lead l = new Lead(LastName='test'+i,Company='test'+i,Status='Open - Not Contacted');
            lstLead.add(l);
        }
        insert lstLead;
        DailyLeadProcessor dlp = new DailyLeadProcessor();
        Test.startTest();
        string jobId = System.schedule('ScheduleApexJob', CRON_EXP, dlp);
        List<Lead> testleadlist = [select Id from Lead where LeadSource='Dreamforce'];
        system.assertEquals(0, testleadlist.size());
        Test.stopTest();
        testleadlist = [select Id from Lead where LeadSource='Dreamforce'];
        system.assertEquals(testleadlist.size(),lstLead.size());
    }
}