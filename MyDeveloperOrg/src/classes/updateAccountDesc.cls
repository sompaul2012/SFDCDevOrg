public with sharing class updateAccountDesc {

    public static void AccountUpdate(List<Case> c)
    {
        Set<Id> acntId = new Set<Id>();
        for(Case ca:c)
        {
            acntId.add(ca.AccountId);
        }
       List<Account> aclist = [select Id, Description from Account where Id IN :acntId];
        
        for(Case cs: c)
        {
            for(Account act:aclist)
            {
              if(cs.AccountId == act.Id)   
              {
                  system.debug('case status'+ cs.Status);
                  act.Description = cs.Status;
                  system.debug('Account Description:'+ act.Description);
              }
            }
        }
        update aclist;
           
      }
}