trigger AppleWatchTrigger on Opportunity (after insert) {
    List<Task> lisofTask = new List<Task>();
    
    for(Opportunity opp: Trigger.new)
    {
        Task t = new Task();
        //t.AccountId = opp.AccountId;
        t.WhatId = opp.Id;
        t.Subject='Apple Watch Promo';
        t.Description ='Send One ASAP';
        t.Priority = 'High';
        
        lisofTask.add(t);    
    }
    
    insert lisofTask;
    system.debug('task id'+lisofTask.get(0));

}