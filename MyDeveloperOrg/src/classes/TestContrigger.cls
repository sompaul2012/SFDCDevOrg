@isTest
public class TestContrigger
{
 public static testmethod void testOnConTrigger()
{
    Account acct = new Account(name = 'tstacct');
    insert acct;
    List<Contact> cons = new List<Contact>();
    
         
      
           for(Integer i=0;i<100;i++ )  
            {
              Contact con = new Contact(lastname='apex',AccountId=acct.Id,firstname='testrun');   
               cons.add(con);          
            }  
             Test.startTest();
              insert cons;
               Test.stopTest();      
}

}