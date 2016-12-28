public class ParkLocatorController {
   
    public List<String> li_parks{get;set;}
    public string country_nm{get;set;}
    public pagereference country()
    {
        List<String> parks_list = new List<String>();
        try{
        parksServices.ParksImplPort psrksimp = new parksServices.ParksImplPort();
        parks_list = psrksimp.byCountry(country_nm);
        }
        catch(System.CalloutException CE)
        {
            
        }
        //return parks_list;
        li_parks =parks_list ;
        return null;
        
    }



}