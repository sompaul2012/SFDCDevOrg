public class AsyncEnqueueJobExample implements Queueable{
    
    public void execute(QueueableContext QC)//QueueableContext
    {
        Account a = new Account(Name='TestAccountJob1_TA1');
        insert a;
    }

}