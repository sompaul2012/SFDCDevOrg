global class AccountIdPopulation {
	private static Id OpportunityId;
    webservice static Id getAccountId(Id OpptyId)
    {
        system.debug('Passed Oppty Id'+ OpptyId);
        OpportunityId = OpptyId;
        Opportunity opt = [select AccountId from Opportunity where Id=:OpportunityId];
        system.debug('Account Id'+ opt.AccountId);
        return opt.AccountId;
    }
}