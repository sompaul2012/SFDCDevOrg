public class CreateLeadRecordApex {
    public ApexPages.StandardController controller; 
    public Lead lds;
   // public Id setRecordstat{get;set;}
    //List<Lead> Leadlist = new List<Lead>();
    public Lead ld{get;set;}
    public string RecordId;
    public CreateLeadRecordApex(ApexPages.StandardController stdCtrl)
    {
        
        ld=(Lead)stdCtrl.getRecord();
        this.controller = stdCtrl;
       lds = [SELECT Id,Status FROM Lead where Id =:ld.Id limit 1];
        
        	lds.Status = 'Working - Contacted';
        	update lds;
        	//return lds.Id;
        
        
    }
  /*  public Id setRecordstat()
    {
         
    }*/
   
}