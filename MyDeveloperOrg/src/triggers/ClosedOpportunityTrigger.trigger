trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    if(Trigger.isAfter)
    {
        List<Opportunity> opplist = [select Id,StageName from Opportunity where Id IN :Trigger.new];
        //List<Opportunity> optlist = new List<Opportunity>();
        List<Task> listofTask = new List<Task>();
        if(Trigger.isInsert || Trigger.isUpdate)
        {
            for(Opportunity opp: opplist)
            {
                if(opp.StageName =='Closed Won')
                {
                    listofTask.add(new Task(Subject ='Follow Up Test Task',WhatId= opp.Id));
                }
            }
            insert listofTask;
        }
    }
}