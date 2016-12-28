public class MySimpleCustomController
{
   

public Contact con;

Id recordId ;
public MySimpleCustomController()
{
recordId = ApexPages.currentPage().getParameters().get('Id');

    }

    public string getContactdetails()
    {
        
        con = [Select FirstName, LastName,Email from Contact where Id =:recordId];
        return 'FirstName:' + con.FirstName + 'LastName:'+ con.LastName;
    }
}