public with sharing class CustomSettingsListController {

    List<Skill__c> skilllist = Skill__c.getAll().values();
  public List<Skill__c> selectskills {
      get{
          return skilllist;
      }
      set;
  }

  public List<selectOption> isoCodes {
    get {
      List<selectOption> options = new List<selectOption>();

      for (Skill__c ski : Skill__c.getAll().values())
        options.add(new SelectOption(ski.Technology__c,ski.Domain__c+' - '+ski.Technology__c));
      return options;

    }
    set;
  }

}