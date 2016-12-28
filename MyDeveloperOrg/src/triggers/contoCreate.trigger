trigger contoCreate on Contact (before insert, before update) {

for(Contact ct : Trigger.new)
{
    //Account acct = [select Name,Id from Account where Id =: ct.AccountId];
    ct.email = ct.Lastname + '@testmail.com';
}

}