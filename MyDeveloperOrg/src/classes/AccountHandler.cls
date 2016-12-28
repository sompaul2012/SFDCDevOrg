public with sharing class AccountHandler {
    public static Account insertNewAccount(String Name)
    {
        Account acc = new Account(Name = Name);
        try
        {
            insert acc;
            system.debug('recid id @@'+acc.Id);
            return acc;
        }
        catch(DmlException e)
        {
            system.debug(e.getMessage());
           	return null;
        }
    }
}