public with sharing class getOpportunityExtract {
    
    public List<Opportunity> getOpptyDetails()
    {
        return [select Id,AccountId from Opportunity limit 10];
    }
    public PageReference doneIt()
    {
        string url = '/006/o';
        PageReference ref = new PageReference(url);
        ref.setRedirect(true);
        return ref;
    }
}