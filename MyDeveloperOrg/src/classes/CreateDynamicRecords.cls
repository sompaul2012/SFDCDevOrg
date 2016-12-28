public with sharing class CreateDynamicRecords {

public Account accnt{get;set;}
    public CreateDynamicRecords(ApexPages.StandardController controller) {

        accnt = (Account)controller.getRecord();
        
    
    }

}