trigger OptyDescUpdate on Opportunity (before insert,before update) {
    
    List<Opportunity> listofOpp = new List<Opportunity>();
    //static Integer i= 0;
    try{
        for(Opportunity opp: Trigger.new)
        {
            if(Trigger.isInsert){
                opp.Description = '\n'+ string.valueOf(opp.Description)  + '  Description updated by before insert trigger';
            }
            if(Trigger.isUpdate){
                opp.Description = '\n' +string.valueOf(opp.Description)  + '  Description updated by before update trigger';
            }
            
            listofOpp.add(opp);
            //i=i+1;
        }
    }
    catch(Exception e)
    {
        system.debug('Error'+ e.getMessage());
    }
    // update listofOpp;
}