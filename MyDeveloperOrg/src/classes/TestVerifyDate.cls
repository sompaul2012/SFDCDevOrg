@isTest
private class TestVerifyDate {

    private static testmethod void testDate()
    {
        //Date d1 = new Date();
        /*Date d2 ;//= d2.//d1.today()
        string d = '20/01/2012';
        Date d1 =(Date)string.valuof(d);
        d2 = d1.addDays(20);*/
        Date dt1 = Date.newInstance(2000, 1, 1);//yyyy,mm,dd
        String sDateTime1 = String.valueOfGmt(dt1);
        Date dt2 = Date.newInstance(2000, 1, 20);
        String sDateTime2 = String.valueOfGmt(dt2);
        Date retdat = VerifyDate.CheckDates(dt1, dt2);
        system.assertEquals(dt2, retdat);
        Date dt3 = dt1.addDays(33);
        Date retdate1 = VerifyDate.CheckDates(dt1, dt3);
        system.assertNotEquals(dt3, retdate1);
    }
}