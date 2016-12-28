trigger ProcessAccountFuture on Account (before update,before insert) {
    
    Set<String> unqiuename = new Set<String>();
    for(Account a: trigger.new)
    {
        /*if(a.sompaul__IsFutureContext__c)
        {
            a.sompaul__IsFutureContext__c=false;
        }
        else
        {*/
           unqiuename.add(a.Name); 
        //}
        
    }
    if(!unqiuename.isEmpty()){
        if(!system.isFuture()){
    	AccountUpdateFurtureProcess.process(unqiuename);
        }
    }

}