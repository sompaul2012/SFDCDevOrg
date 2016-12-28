public class TestApex
{
    public static void CreateOpty()   
    {
        Opportunity opt = new Opportunity();
        opt.Name = 'Test Opty';
         opt.StageName = 'Needs Analysis'; 
          opt.CloseDate = Date.Today() + 90;     
    }
}