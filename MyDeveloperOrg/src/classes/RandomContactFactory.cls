public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer num, String Ln)
    {
        List<Contact> listofcon = new List<Contact>();
        for(Integer j=0;j<num;j++)
        {
            Contact con = new Contact(LastName=Ln,FirstName='Test'+j);
            listofcon.add(con);
        }
        return listofcon;
    }
}