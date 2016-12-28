public with sharing class VFWithJSController
{
    public string show = '';
    public string getShowme()
    {
        return show;    
    }
    public string str1{get;set;}
        public string str2{get;set;}

    public Contact names{get{return [select Name,LastName from Contact where AccountId !=: null LIMIT 1];}set;}
    public PageReference myconaction() {
        /*str1 = Apexpages.currentPage().getParameters().get('text1');
        str2 = Apexpages.currentPage().getParameters().get('text2');*/
        
        show = 'Hey '+str2 +' you are staying in '+str1 ;
        return null;
    }



}