public class getRoleClass {
    
    public static Map<string,string> mapdefinitions;
    
    public static string getRoleDefinitions(string roleType)
    {
        if(mapdefinitions == null)
        {
            mapdefinitions = new Map<string,string>();
            system.debug('Empty map'+mapdefinitions);
        List<LFMO_Policy__c> pol = new List<LFMO_Policy__c>();
            system.debug('Empty list'+pol);
        pol = LFMO_Policy__c.getAll().values();
            system.debug('Policy CS values'+pol);
        	for(LFMO_Policy__c p:pol)
        	{
                if(!mapdefinitions.containsKey(p.Role_Type__c))
            	mapdefinitions.put(p.Role_Type__c, p.Role_Definition__c);
        	}
            system.debug('Filled map values'+mapdefinitions);
        }
        
        if(mapdefinitions.containsKey(roleType))
        {
            system.debug('Role Type Value'+mapdefinitions.get(roleType));
        	return mapdefinitions.get(roleType);
        }
        return null;
    }

}