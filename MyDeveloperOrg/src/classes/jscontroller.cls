public class jscontroller
{

private Opportunity opt;
public Id recId;
public string sysurl = null;
    public jscontroller()   
    {
        recId = apexpages.currentpage().getparameters().get('id');
    }
        
    public Pagereference getrelatedOpty()
    {
            opt = [SELECT AccountId FROM Opportunity WHERE Id =:recId];
            sysurl = System.URL.getSalesforceBaseUrl().toExternalForm() + '/'+opt.AccountId;
            Pagereference pr = new Pagereference(sysurl);
                 return pr;
                             
    }
}