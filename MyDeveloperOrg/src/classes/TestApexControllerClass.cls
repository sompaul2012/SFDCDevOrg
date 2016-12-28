public class TestApexControllerClass {
    public Account account{get;set;}
    public Contact contact{get;set;}
    
    public TestApexControllerClass(ApexPages.StandardController contactController)
    {
        this.account = (Account) contactController.getRecord();
		contact = new Contact(); 
    }
    
    public PageReference SaveAccount()
    {
        account.Industry = 'Energy';
        Database.insert(account);
        contact.AccountId = account.Id;
        contact.LastName = 'Roychow';
		ApexPages.StandardController conController = new ApexPages.StandardController(contact);
        return conController.save();
    }
    
}