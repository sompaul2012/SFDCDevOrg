trigger PrimaryMovementTrigger on TestB__c (After insert,After Update) {

    PrimaryFlagHandler handler = new PrimaryFlagHandler();
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
           handler.oninsert(trigger.new);
        }
    }
    if(Trigger.isAfter)
    {
        if(Trigger.isUpdate)
        {
           handler.onupdate(trigger.new,trigger.old);
        }
    }
    
}