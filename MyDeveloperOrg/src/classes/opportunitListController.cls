public class opportunitListController
{
public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController([SELECT Name, CloseDate,StageName,Amount FROM Opportunity]);
            }
            return setCon;
        }
        set;
    }
public List<Opportunity> getOpties()
{
    return (List<Opportunity>)setCon.getRecords();
}



}