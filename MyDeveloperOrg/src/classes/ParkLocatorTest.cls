@isTest
private class ParkLocatorTest {
    @isTest static void testcallout()
    {
        Test.setmock(WebServiceMock.class, new ParkServiceMock());
        List<String> listofParks = new List<String>{'Anamudi Shola National Park','Anshi National Park','Bandipur National Park'};
        List<String> result = ParkLocator.country('India');
        system.assertEquals(listofParks, result);
    }

}