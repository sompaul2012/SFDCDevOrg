public class AnimalLocator {
    
    public static String getAnimalNameById(Integer id)
    {
        integer locId = id; 
        string animnal_name='beer';
        List<String> animal_name_li = new List<String>();
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        string url = 'https://th-apex-http-callout.herokuapp.com/animals/'+locId;
        request.setEndpoint(url);
        request.setMethod('GET');
        
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
            system.debug('output'+response.getBody());
        
            Map<String,Object> result = (Map<String,Object>)JSON.deserializeUntyped(response.getBody());
            Map<String,Object> animal = (Map<String,Object>)result.get('animal');
            animnal_name = (String)animal.get('name');
            system.debug('response ::'+result);
        }
    
           return animnal_name;
       
        
    
    }

}