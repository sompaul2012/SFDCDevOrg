@isTest
public class Test_UpdateCaseComments {
    public static string res = null;
    
    public static testmethod string updposcomm()
    {
        Case nc = new Case(Subject='Test Data',Status='New',Origin='Web');//creating test case
        insert nc;
        
        Test.startTest();
     	   res = UpdateCaseComments.updatecomm(nc.Id);
        Test.stopTest();
        	return res;
    }
    public static testmethod string updnegcomm()
    {
        Case nc = new Case(Subject='Test Data',Status='New',Origin='Web');//creating test case
        insert nc;
        string ubody = nc.Subject + ' ' + nc.CaseNumber;
        CaseComment cac = new CaseComment(ParentId=nc.Id,CommentBody=ubody);
        insert cac;
        Test.startTest();
     	   res = UpdateCaseComments.updatecomm(nc.Id);
        Test.stopTest();
        	return res;
    }
 /* public static testmethod void NewCaseComments()  
  {
      CaseComment cs ;//= new CaseComment();
      string body;
      //Case c = [SELECT CaseNumber,Id,Subject FROM Case WHERE Id = '50028000000V4nS'];
      //Case c1 = [SELECT CaseNumber,Id,Subject FROM Case WHERE Id = '50028000000Udhw'];
      Case nc = new Case(Subject='Test Data-New Case',Status='New',Origin='Web');//creating test case
      insert nc;
      body = nc.Subject + nc.CaseNumber;
      
      Test.startTest();
      UpdateCaseComments.newcasecomments(cs,nc,body);
      Test.stopTest();
   		//res = 'new case created';
   
  }
    
    public static testmethod void UpdateCaseComments()  
  {
      String ubody;
      Case uc = new Case(Subject='Test Data-Update Case',Status='New',Origin='Web');
      insert uc;
      CaseComment cac = new CaseComment(ParentId=uc.Id,CommentBody=ubody);
      insert cac;
      List<CaseComment> listCs = new List<CaseComment>();
      listCs.add(cac);//[SELECT CommentBody,Id,ParentId FROM CaseComment where ParentId=: .Id];
      ubody = uc.Subject + ' ' + uc.CaseNumber;
      
      Test.startTest();
      UpdateCaseComments.updcasecomments(listCs,ubody);
      Test.stopTest();
      //res = 'new case created';
      
  }*/

}