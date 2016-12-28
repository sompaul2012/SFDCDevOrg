public with sharing class objectTypeController {
public ApexPages.StandardController myAccountController {get; set;}
   
    public String objChosen1 {get; set;}
   // public Schema.SObjectField fieldScema{get;set;}
    
    public Account Account {get; set;}
    public TestA__c testObj{get;set;}
    public Account acc{get;set;}
    public Id AccntId {get;set;}
    
    public Contact con{get;set;}
    public Id ConId {get;set;}
    
    public Lead lead{get;set;}
    public Id LeadId {get;set;}
    
    public ApexPages.StandardController myLeadController {get; set;}
    
    
    public ApexPages.StandardController myTestAcontroller;
    public string fieldName {get; set;}
    public string Object_name;
        
    public objectTypeController(ApexPages.StandardController cntrl) {
     //fieldScema = TestA__c.Object_Name__c;
     acc = new Account();
     con= new Contact();
     lead = new Lead();
      }
      
      public PageReference doDML()
      {
                   string url;
                   Pagereference page = null;
         if(fieldName == 'Account')
         {
             insert acc;
            AccntId = acc.Id;
        url ='/'+AccntId ;
     page = new PageReference(url);
       // page.setRedirect(true);
         }
         
      
        if(fieldName == 'Contact')
        {
        insert con;
        ConId = con.Id;
        url ='/'+ConId;
     page = new PageReference(url);
       // page.setRedirect(true);
        }
        
        if(fieldName == 'Lead')
        {
            insert lead;
            LeadId = lead.Id;
            url ='/'+LeadId;
            page = new PageReference(url);
       // page.setRedirect(true);
        }
            
         page.setRedirect(true);
         return page;             
      }
    }