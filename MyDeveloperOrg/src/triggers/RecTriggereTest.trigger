trigger RecTriggereTest on Contact (before insert, before update) {

    List<Contact> listofCon = new List<Contact>();
    for(Contact con: Trigger.new)
    {
        Contact con1 = new Contact(LastName= 'Test678');
        Contact con2 = new Contact(LastName='Test6790');
        
        listofCon.add(con1);
    }
 }