global with sharing class sendBankingData
{
    
global class BankAcc{
        webservice Id Id;
}
global class Response
{
    	webservice List<Bank__c> IFSC;
        webservice List<Bank__c> MICR;
        webservice List<Bank__c> Priority;
}
        //webservice list<SystemWrapper> Response;

 
webservice static Response queryBank(BankAcc acc,Response res){
    	
    	res.IFSC=[SELECT IFSCCode__c FROM Bank__c where Integration_Id__c=:acc.Id];
     	res.MICR=[SELECT MICRCode__c FROM Bank__c where Integration_Id__c=:acc.Id];
    	res.Priority=[SELECT Name FROM Bank__c where Integration_Id__c=:acc.Id];
    	//acc.IFSC=IFSC;
    	//acc.MICR=MICR;
		return res;
	}    
    
}