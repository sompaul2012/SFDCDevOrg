trigger ClosedWonOpty on Opportunity (before update) {

    for(Opportunity Op : Trigger.New)    
    {
       Opportunity oldOpp = Trigger.oldMap.get(Op.Id); 
        System.debug('Old Opportunity Id' + oldOpp.Id);
       Boolean isOldopClosedWon = oldOpp.StageName.equals('Closed Won')  ;
          System.debug('Old Slaes Stage Value'+oldOpp.StageName);       
       Boolean isNewopClosedWon = Op.StageName.equals('Closed Won')  ; 
        
        if(!isOldopClosedWon && isNewopClosedWon)
 if(isNewopClosedWon)
          {
              Op.CheckIFClosecWon__c = true;
          }
           
           // update op; 
    }    
}