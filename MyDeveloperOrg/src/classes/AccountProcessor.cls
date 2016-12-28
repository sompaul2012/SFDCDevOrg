global class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> AccntIds)
    {
        List<Account> list_of_Account = [select Id,sompaul__Number_of_Contacts__c from Account where Id IN: AccntIds];
        system.debug('List of accounts'+list_of_Account);
        List<Account> accountToBeUpdated = new List<Account>();
        Integer Contact_cnt=0;
        //Map<Id,Decimal> = new Map<Id,Decimal>();
        List<AggregateResult> agrRes = [select count(Id),Contact.Account.Id from Contact,Contact.Account where Contact.Account.Id IN : AccntIds group by Contact.Account.Id];
        system.debug('AggregateResult value:'+agrRes);
        
        for(AggregateResult ar: agrRes)
        {
            
            for(Account a:list_of_Account)
            {
                if(a.Id == ar.get('Id'))
                {
                    a.sompaul__Number_of_Contacts__c = (Decimal)ar.get('expr0');
                    accountToBeUpdated.add(a);
                }
            }
            system.debug('Account Data to be updtaed'+accountToBeUpdated);
            
        }
        if(!accountToBeUpdated.isEmpty())
        {
            update accountToBeUpdated;
        }
        
    }
}