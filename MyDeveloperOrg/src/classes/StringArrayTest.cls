public with sharing class StringArrayTest {
    
    public static List<String> generateStringArray (integer n)
    {
        
        List<string> lisstring = new List<string>();
        for(integer i=0;i<n;i++)
        {
            lisstring.add('Test '+i);
        }
        system.debug('value of string'+lisstring);
        return lisstring;
    }

}