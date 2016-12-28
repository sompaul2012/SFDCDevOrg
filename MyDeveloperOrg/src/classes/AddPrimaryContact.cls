public class AddPrimaryContact implements Queueable{
    private Contact con;
	private string state;
    public AddPrimaryContact(Contact con,String state)
    {
        this.con=con;
        this.state = state;
    }
    public void execute(QueueableContext Context)
    {
        //Contact cont = [select Id,LastName,AccountId from Contact where Id=: con.Id limit 1];
        List<Account> accntlist = [select Id,Name,BillingState,
                                   (select Id,FirstName,LastName,Email from Contacts) from Account where BillingState=: state limit 200];
        List<Contact> Conlist = new List<Contact>();
        for(Account a: accntlist)
        {	
            Contact cclone = con.clone(false,false,false,false);
            cclone.AccountId = a.Id;
            Conlist.add(cclone);
        }
        if(!Conlist.isEmpty()){
        	insert Conlist;
        }
    }
}