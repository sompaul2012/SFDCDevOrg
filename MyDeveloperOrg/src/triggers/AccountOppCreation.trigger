trigger AccountOppCreation on Account (after insert) {

List <Opportunity> opp = new List <Opportunity>();

    for(Account Acc: trigger.new)
    {
    
            /*Opportunity opps = new Opportunity();

            opps.Name = Acc.Name + 'Opportunity';
            opps.CloseDate = Date.Today()+90;
            opps.StageName = 'Needs Analysis';
            opps.AccountId = Acc.Id;*/
        Opportunity opps = OptyCreationFrmAcc.createOppty(Acc);
            opp.Add(opps);                                           
    }
    insert opp;
}