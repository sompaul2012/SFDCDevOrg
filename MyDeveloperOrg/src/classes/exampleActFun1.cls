public with sharing class exampleActFun1
{
        public string mname {get;set;}
        public pagereference myname()
        {
            mname = UserInfo.getName();
            return null;
        }    

}