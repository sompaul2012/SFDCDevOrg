public class GetOppName {
public Account account{get;set;}
public Opportunity opp{get;set;}
public GetOppName (ApexPages.StandardController AccController)
{
    this.account = (Account) AccController.getRecord();
    
}
    public string getOptyName()
    {
        this.opp = [select name from Opportunity where AccountId =: account.Id];
        return opp.name;
    }
}