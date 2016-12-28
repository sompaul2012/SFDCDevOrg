trigger AccountAddressTrigger on Account (before insert, before update) {

    //sompaul__Match_Billing_Address__c
    if(Trigger.isBefore)
    {
        system.debug('This called before invocation of any DML');
        if(Trigger.IsInsert || Trigger.IsUpdate)
        {
			for(Account acc: Trigger.new)            
            {
                if(acc.sompaul__Match_Billing_Address__c == true)
                {
                    if(acc.BillingPostalCode != '' || acc.BillingPostalCode != null)
                    {
                        acc.ShippingPostalCode = acc.BillingPostalCode;
                       // update acc;
                    }
                }
            }
        }
       //SELECT BillingPostalCode,ShippingPostalCode FROM Account
    }
}