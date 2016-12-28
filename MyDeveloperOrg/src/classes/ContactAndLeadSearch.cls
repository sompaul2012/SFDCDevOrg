public with sharing class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(string srchparam)
    {
        Contact c = new Contact(LastName= 'Smith');
        insert c;
        Lead l = new Lead(LastName = 'Smith',Company='Test Acc');
        insert l;
        List<List<SObject>> searchreslt= [Find :srchparam IN ALL FIELDS RETURNING Contact(LastName),Lead(FirstName,LastName)];
        return searchreslt;
    }
}