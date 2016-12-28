trigger CaseStatusUpdate on Case (after update) {
	List<Case> caselist = new List<Case>();
    if(Trigger.isBefore && Trigger.isUpdate)
    {
        
        for(Case c: trigger.new)
        {
            //caselist.add(c);
            if(c.status == 'Escalated')
            {
                caselist.add(c);
            }
        }
        
        updateAccountDesc.AccountUpdate(caselist);
      
    }
}