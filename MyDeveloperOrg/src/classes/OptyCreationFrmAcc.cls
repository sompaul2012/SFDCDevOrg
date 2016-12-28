public class OptyCreationFrmAcc
{
    public static Opportunity opps;
    /*public OptyCreationFrmAcc()
    {
        opps = new Opportunity();
    }*/
    
    public static Opportunity createOppty(Account Acc)
    {
        opps = new Opportunity();
        opps.Name = Acc.Name + 'Opportunity';
            opps.CloseDate = Date.Today()+90;
            opps.StageName = 'Needs Analysis';
            opps.AccountId = Acc.Id;        
        return opps;
    }
}