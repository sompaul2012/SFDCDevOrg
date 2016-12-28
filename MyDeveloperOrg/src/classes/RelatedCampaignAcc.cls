public with sharing class RelatedCampaignAcc {

    private ApexPages.StandardController controller{get;set;}
    public List<Contact> ConList{get;set;}
    public List<CampaignMember> campMem;
    public List<CampaignMember> camplist1;
    public List<Campaign> cam1;
     
    public List<Campaign> camp;  
    public List<CampaignMember> CamaignMemberList{get;set;}
    public List<Campaign> CampaignList{get;set;}

    public string AccntId;
    
    public RelatedCampaignAcc(ApexPages.StandardController controller)
    {
        this.controller = controller;
       // AccntId= apexpages.currentpage().getparameters().get('id');
     
        campMem = new List<CampaignMember>();
        camp = new List<Campaign>();
        
    }
    
    public PageReference relatedCampaign()
    {
       
       ConList = [SELECT AccountId,Email,Id,Name FROM Contact where AccountId =: this.controller.getId() ];
        // ConList = [SELECT AccountId,Email,Id,Name FROM Contact where AccountId =: AccntId ];
        system.debug('contact list'+ConList);
        
        for(Contact con: ConList)
        {
            camplist1= [SELECT CampaignId,ContactId,Name,Status FROM CampaignMember where ContactId =: con.Id];
            for(CampaignMember cm1:camplist1){
            campMem.add(cm1);              
            }
            
        }
        
        CamaignMemberList = campMem;
        
       for(CampaignMember cm: campMem)
       {

          cam1 = [SELECT Name,Id FROM Campaign where Id=:cm.CampaignId ];
          for(Campaign c1:cam1){
          camp.add(c1);
          }
       }
       
       CampaignList = camp;
       
         System.debug('Campaign Member List'+ CamaignMemberList);
         System.debug('Campaign List'+ CampaignList);
         return null;
    }
    
}