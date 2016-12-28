global with sharing class UpdateCaseComments {
    	//static CaseComment cs;
        static Case c;
    webservice static string updatecomm(Id CaseId)
    {
        CaseComment cs;
        List <CaseComment> listCs = new List <CaseComment>();
            
        string res;
        c = [select Subject,Id,CaseNumber from Case where Id=:CaseId];
        string commbody = c.Subject+ '' + c.CaseNumber;
       /* try
        {
       		 cs = [SELECT CommentBody,Id,ParentId FROM CaseComment where ParentId=: c.Id];
        }
        catch( Exception e)
        {
            cs = new CaseComment(ParentId=c.Id,CommentBody=commbody);
            insert cs;
            res = 'New Comment has been added';
        }*/
        
        listCs = [SELECT CommentBody,Id,ParentId FROM CaseComment where ParentId=: c.Id];
        if(listCs.size()==0)
        {
            newcasecomments(cs,c,commbody);
			/*cs = new CaseComment(ParentId=c.Id,CommentBody=commbody);
            insert cs;*/
            res = 'New Comment has been added';         
        }
        else
        {
            //CaseComment cc;
            updcasecomments(listCs,commbody);
           /* for(CaseComment cc: listCs)
            {
                cc.CommentBody = commbody;
                update cc;
            }*/
        	
            res = 'Comment hasbeen updated';            
        }
        
      /*  if(cs!=null)
        {
            cs.CommentBody = commbody;
        	update cs;
            res = 'Comment hasbeen updated';
        }*/
      
       return res; 
    }
    public static void newcasecomments(CaseComment cs, Case cx, String body)
    {
        cs = new CaseComment(ParentId=cx.Id,CommentBody=body);
            insert cs;
    }
    public static void updcasecomments(List <CaseComment> lstcomm, String body)
    {
        for(CaseComment cs :lstcomm)
        {
          cs.CommentBody = body; 
          update cs;
        }
    }

}