global class NewExternalAdv {

     webservice static string InsertAdv(String Name,string src)
    {
        
        Advertiser__c adv = new Advertiser__c();
        adv.Name = Name;
        adv.Source__c = src;
        insert adv;
        return adv.Source__c;
    }
    
}