public with sharing class ValidateInputParams {

    public string Name{get;set;}
    public string AccountNumber{get;set;}
    public string IFSC_Code{get;set;}
    public string MobileNumber{get;set;}
    
    public void show()
    {
        system.debug('value ::'+ Name);
    }
    
    
}