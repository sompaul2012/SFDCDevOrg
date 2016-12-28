@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
	@HttpGet
    global static Account getAccount()
	{
        string [] urikeys = RestContext.request.requestURI.split('/');
        string accountnum = urikeys.get(urikeys.size()-2);
        Account acc;
  
      
            acc = [select Id,Name,(Select Id,Name from Contacts) from Account where Id =:accountnum];
      
        return acc;
    }
    
 }