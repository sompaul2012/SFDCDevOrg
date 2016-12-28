public class PrimaryFlagHandler {

    public void oninsert(List<TestB__c> testb)
    {
        //Integer [] numofdays;
        Map<Id,String> numofdays = new Map<Id,String>();
        List<TestB__c> tb;
        Account acc;
        
       for(TestB__c t: testb)
        {
            	
         	   tb = [SELECT Account__c,Shipping_Location__c,Primary_Flag__c FROM TestB__c where Id =: t.Id];
				for(TestB__c t1:tb)  
                {
                    numofdays.put(t1.Account__c,t1.Shipping_Location__c);
                    acc = [SELECT ShippingCity FROM Account where Id=:t1.Account__c];
                    if(t1.Primary_Flag__c)
                    {
                         acc.ShippingCity = numofdays.get(t1.Account__c);
                    }
                     
                }
            
        }
        update acc;
        
        //Integer numofday = [SELECT Day_of_Month__c,Id FROM TestB__c where Id:= testb.]
    }
    public void onupdate(List<TestB__c> testb,List<TestB__c> testoldmapb)
    {
        
    }
}