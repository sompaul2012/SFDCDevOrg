public class AccountUpdateFurtureProcess {
    
    @future
    public static void process(Set<String> uniquename)
    {
        List<Account> acctobeUpdated = new List<Account>();
        for(Account a: [Select Id,Name from Account where Name IN: uniquename])
        {
            //a.sompaul__IsFutureContext__c = true;
            acctobeUpdated.add(a);
        }
        update acctobeUpdated;
    }

}