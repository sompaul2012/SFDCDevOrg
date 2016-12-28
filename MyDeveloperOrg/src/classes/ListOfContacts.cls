public class ListOfContacts {

    
    public static List<Contact> getContacts()
    {
        List<Contact> contacts = [SELECT AccountId,Email,FirstName,LastName FROM Contact];
        
        for(Integer i = 0; i< contacts.size();i++)
        {                  
            //contacts[i].FirstName = 'ApexProgram';
            //contacts[i].LastName = 'ApexProgram';
            if(contacts[i].Email == '')
            {
                contacts[i].Email = 'test@test.com';
                update contacts[i];
            }
            //update contacts[i];
        }
            return contacts;
    }
    

}