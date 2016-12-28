public class GetRelatedOppty {
    public List<String> strList{get;set;}
    public List<Account> accList;
    
    public GetRelatedOppty()
    {
       // oppty = [select AccounId from Opportunity where Id=:oppId];
        //acc = [select Name from Account where Id=:oppty.AccountId];
        //accList.add([select AccountId from Opportunity where Id IN:opplist]);
    }
    public static GetRelatedOppty setAccountValue(List<Opportunity> opplist)
    {
     	   return new GetRelatedOppty();
    }

}