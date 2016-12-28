public with sharing class AccountCampApexClass {

    private ApexPages.StandardController controller{get;set;}
    
    public AccountCampApexClass(ApexPages.StandardController controller)
    {
        this.controller = controller;
    }
}