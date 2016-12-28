trigger InsertAdvertiseFlow on Advertiser__c (before insert) {

    for(Advertiser__c adv:trigger.new)
    {
   	 InvokeCalloutAdv.calloutadv(adv);
    }
}