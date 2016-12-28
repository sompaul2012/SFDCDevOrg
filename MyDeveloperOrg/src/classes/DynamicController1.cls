public with sharing class DynamicController1 {

    public List<String> Industries {
    get {
      if (Industries == null) {

        Industries = new List<String>();
        Schema.DescribeFieldResult field = Account.Industry.getDescribe();

        for (Schema.PicklistEntry f : field.getPicklistValues())
          Industries.add(f.getLabel());

      }
      return Industries;          
    }
    set;
  }
}