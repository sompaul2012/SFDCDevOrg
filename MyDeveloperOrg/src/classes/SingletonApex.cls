public class SingletonApex {
    public List<Account> list_acc;
    private static final SingletonApex instance = new SingletonApex();
    private SingletonApex()
    {
        list_acc=[select Name,Id,BillingCity from Account];
    }

    public static SingletonApex getAccount()
    {
        return instance;
    }
}