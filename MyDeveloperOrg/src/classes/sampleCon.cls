public class sampleCon {
        List<Contry__c> countries = new List<Contry__c>();
            
        public PageReference test() {
            return null;
        }
            
        public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            for(Contry__c c: Contry__c.getAll().Values())
            {
                options.add(new SelectOption(c.Country_Code__c,c.Country_Code__c+'-'+c.Country_Name__c));
            }
            return options;
          
        }
            
        public List<Contry__c> getCountries() {
            return countries;
        }
            
        public void setCountries(List<Contry__c> countries) {
            this.countries = countries;
        }
    }