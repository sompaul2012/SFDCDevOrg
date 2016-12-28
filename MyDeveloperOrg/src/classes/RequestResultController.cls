public class RequestResultController {
    
    string accname,acctype;
    List<Account> accounts;
    
    public string getaccname()
    {
        return accname;
    }
    
    public void setaccname(string n)
    {
        accname=n;
    }
    public string getacctype()
    {
        return acctype;
    }
    public void setacctype(string t)
    {
        acctype=t;
    }
    
    public List<Account> getAccountResults()
    {
        return accounts;
    }
    public pagereference doSearch()
    {
        accounts = [select name,Type,Industry,Integration_Id__c from Account where name=:accname and type=:acctype ];
            return null;
    }

}