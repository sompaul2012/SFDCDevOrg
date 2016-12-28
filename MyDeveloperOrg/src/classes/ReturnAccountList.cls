public class ReturnAccountList {
    List<Account> acc1 = new List<Account>();
        List<Account> acc2 = new List<Account>();
    public List<Account> getaccounts()
    {
       /* Account a1 = new Account(Name='Test1');
        Account a2 = new Account(Name='Test2');
        Account a3 = new Account(Name='Test3');
                        
        acc.add(a1);
        acc.add(a2);
        acc.add(a3);    */
        
        acc1 = [select Name,Type,Id from Account];
      /*  for(Account a: acc1)
        {
            acc2.add(a);
        }*/
       // acc2=acc1;
                                                                         
      return acc1;
    }
}