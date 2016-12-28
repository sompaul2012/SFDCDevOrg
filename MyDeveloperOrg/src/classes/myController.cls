public class myController {

//public Account acc{get;set;}
public Account acc;//{get;set;}
public Contact con;
//private PageReference updateRec;
public myController()
{
    //Account acc;
    
    Id id = ApexPages.currentPage().getParameters().get('id');
    if(id == null)
    {
        acc = new Account();
       }
    else
    {
        acc = [select Id,Name from Account where Id=: id]  ;  
    }   
        
    }
    

/*public Account royAcc()
{
    acc.Name = acc.Name + 'update_from_Demo7_VF';
    return acc;
}*/

public Account getacc()
{
   //acc.Name = acc.Name + 'update_from_Demo7_VF';
    return acc;
}

public PageReference updateRec()
{
    upsert acc;
    con = new Contact();
    con.AccountId=acc.Id;
    con.LastName=acc.Name;
    insert con;
    
    
 PageReference redirectSuccess = new ApexPages.StandardController(con).view();
        return (redirectSuccess);

}

}