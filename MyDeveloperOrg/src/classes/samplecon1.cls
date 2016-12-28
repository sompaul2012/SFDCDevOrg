public class samplecon1 {
        List<string> countries = new List<string>();
        
        public List<string> getcountries()
        {
            return countries;
        }
            
        public PageReference test() {
            return null;
        }
            
        public List<SelectOption> getItems() 
        {
            List<SelectOption> options = new List<SelectOption>();
            
                for(Contry__c c: Contry__c.getAll().Values())
                {
                    options.add(new SelectOption(c.Country_Code__c,c.Country_Code__c+'-'+c.Country_Name__c));
                }
            return options;
     
        }
        
        public void setCountries(List<string> countries)
        {
            this.countries = countries;
        }
            

    }