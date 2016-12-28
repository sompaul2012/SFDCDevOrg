trigger SampleSingleton on Opportunity (before insert,before update) {

    List<Opportunity> opp_list = new List<Opportunity>();
    for(Opportunity opp: Trigger.new)
    {
        //GetRelatedOppty getOp = new GetRelatedOppty();
        opp_list.add(opp);
    }
}