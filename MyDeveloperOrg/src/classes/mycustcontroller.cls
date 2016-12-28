public class mycustcontroller
{

public Account acct{get;set;}
Id acctid = null;
    public mycustcontroller()
    {
        acctid = ApexPages.currentPage().getParameters().get('id');
        if(acctid == null)
        {
            acct = new Account();
        }
        else
        {
            acct = [select name,Industry,phone from Account where Id=:acctid];
        }
    }
    
    public PageReference upsertacct()
    {
        try
        {
            upsert(acct);
        }
        catch(System.DMLException e)
        {
            ApexPages.AddMessages(e);
        }
        
        PageReference p = null;//new ApexPages.StandardController(Account).view();
        return p;
    }
    
}