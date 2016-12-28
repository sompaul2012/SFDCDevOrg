public with sharing class ContactSearch {

    public static List<Contact> searchForContacts(string lstnae,string mail)
    {
        try{
        List<Contact> listcon = [select Id,Name from Contact where LastName=:lstnae AND MailingPostalCode=:mail];
            return listcon;
        }
        catch(DmlException e)
        {
            system.debug(e.getMessage());
            return null;
        }
    }
}