//Generated by wsdl2apex

public class wwwEsbManulifeComXsdCommonJhCommo {
    public class RequestParameter {
        public String ParmName;
        public String ParmValue;
        public String ParmDesc;
        private String[] ParmName_type_info = new String[]{'ParmName','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'1','1','false'};
        private String[] ParmValue_type_info = new String[]{'ParmValue','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'1','1','false'};
        private String[] ParmDesc_type_info = new String[]{'ParmDesc','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.esb.manulife.com/xsd/common/jh/CommonMessage','true','false'};
        private String[] field_order_type_info = new String[]{'ParmName','ParmValue','ParmDesc'};
    }
    public class FaultType {
        public String ErrorCode;
        public String ErrorDescription;
        private String[] ErrorCode_type_info = new String[]{'ErrorCode','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'1','1','false'};
        private String[] ErrorDescription_type_info = new String[]{'ErrorDescription','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.esb.manulife.com/xsd/common/jh/CommonMessage','true','false'};
        private String[] field_order_type_info = new String[]{'ErrorCode','ErrorDescription'};
    }
    public class RequestParameters {
        public wwwEsbManulifeComXsdCommonJhCommo.RequestParameter RequestParameter;
        private String[] RequestParameter_type_info = new String[]{'RequestParameter','http://www.esb.manulife.com/xsd/common/jh/CommonMessage',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.esb.manulife.com/xsd/common/jh/CommonMessage','true','false'};
        private String[] field_order_type_info = new String[]{'RequestParameter'};
    }
}