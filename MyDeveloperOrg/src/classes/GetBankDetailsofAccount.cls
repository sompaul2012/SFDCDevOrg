global with sharing class GetBankDetailsofAccount {

 //webservice string accname;
    static Account acc = null;
    
    webservice static string getBankDetails(string accname)
    {
        acc = [SELECT IFS_Code__c FROM Account where Name=:accname];
        return acc.IFS_Code__c;
    }
    
}