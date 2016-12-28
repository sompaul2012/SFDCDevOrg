public class ExportObjectFieldsController {
    
    public Map <String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
	public List<Pair> lstfieldname{get;set;}
	public List <Pair> fields {get{return lstfieldname;} set{lstfieldname =value;}}
	public List <SelectOption> objectNames{public get; private set;}
	public String selectedObject {get; set;}
    
    public ExportObjectFieldsController()
    {
         selectedObject = Apexpages.currentPage().getParameters().get('selectedObject');
       	 fields = new List<Pair>();
    }
    
    public void showFields() {
	//fields.clear();
	lstfieldname.clear();
	//system.debug('$$$$$' + selectedObject);
	Map <String, Schema.SObjectField> fieldMap = schemaMap.get(selectedObject).getDescribe().fields.getMap();
	for(Schema.SObjectField sfield : fieldMap.Values())
	{
		schema.describefieldresult dfield = sfield.getDescribe();
		//system.debug('#######' + dfield );
		Pair field = new Pair();
		field.key = dfield.getname();
		//system.debug('#######4444' + field.key);
		field.val = dfield.getType () + ' : ' + dfield.getLabel();
		lstfieldname.add(field);
	}
        //return lstfieldname;
     	             
}
    
    public class Pair
	{
		public String key {get; set;}
		public String val {get; set;}
	}

}