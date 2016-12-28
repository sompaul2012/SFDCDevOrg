global class LeadProcessor implements Database.Batchable<sObject>
{
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select Id,LeadSource from Lead');
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope)
    {
        List<Lead> list_of_lead = new List<Lead>();
        for(Lead l:scope)
        {
            l.LeadSource = 'Dreamforce';
            list_of_lead.add(l);
        }
        update list_of_lead;
    }
    
    global void finish(Database.BatchableContext bc)
    {
        AsyncApexJob job= [select Id,Status,NumberOfErrors,CreatedBy.Email from AsyncApexJob where Id=:bc.getJobId()];
    }

}