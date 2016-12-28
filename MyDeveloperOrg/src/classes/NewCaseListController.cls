public with sharing class NewCaseListController {
    
    public List<Case> getNewCases()
    {
        List<Case> caselist = [select Id, CaseNumber from Case where status=:'New'];
        return caselist;
    }

}