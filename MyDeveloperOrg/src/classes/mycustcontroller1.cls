public class mycustcontroller1
{
private string firstname;
private string lastname;
private string email;
public string qp = null;
public string id = null;
private Lead leaddetails = null;

    public mycustcontroller1()
    {
           qp = apexpages.currentpage().getparameters().get('qp');
           id = apexpages.currentpage().getparameters().get('id'); 
            
             if(qp == 'create' && id == null)
              {
                  leaddetails = new Lead();
              } 
               else
                {
                    if(id!= null){            
                    leaddetails = [select firstname,lastname,email from Lead where id=:id];                
                    }                
        }    
    }

    public Lead getleaddetails()
    {
             
              return leaddetails;                  
    }
    
/*    public void setleaddetails()
    {
        leaddetails.firstname = 'lead1frmvf';                            
                leaddetails.lastname = 'lead1frmvf';
                         leaddetails.email = 'lead1frmvf@gmail.com'; 
                          
           //insert leaddetails;                    
    }*/
    
    public Pagereference updatelead()
    {
    Pagereference p = null;
    try{
           upsert  leaddetails;
    }
    catch(Exception e)
    {
           p = page.Demo13;
           p.getParameters().put('error','no parameters')  ;
    }
           return p;
    }
 }