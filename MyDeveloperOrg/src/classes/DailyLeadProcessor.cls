global class DailyLeadProcessor implements Schedulable{
    
    global void execute(SchedulableContext sc)
    {
       List<Lead> listofleads = new List<Lead>(); 
        for(Lead l:[select LastName,Company,Status,LeadSource from Lead where LeadSource =''])
        {
            l.LeadSource = 'Dreamforce';
            listofleads.add(l);
        }
            update listofleads;
    }

}