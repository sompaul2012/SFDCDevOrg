//Generated by wsdl2apex

public class AsyncWwwEsbManulifeComXsdWealthPfsPart {
    public class GetParty_response_elementFuture extends System.WebServiceCalloutFuture {
        public wwwEsbManulifeComXsdWealthPfsPart.GetParty_response_element getValue() {
            wwwEsbManulifeComXsdWealthPfsPart.GetParty_response_element response = (wwwEsbManulifeComXsdWealthPfsPart.GetParty_response_element)System.WebServiceCallout.endInvoke(this);
            return response;
        }
    }
    public class SearchParties_response_elementFuture extends System.WebServiceCalloutFuture {
        public wwwEsbManulifeComXsdWealthPfsPart.Party_Type[] getValue() {
            wwwEsbManulifeComXsdWealthPfsPart.SearchParties_response_element response = (wwwEsbManulifeComXsdWealthPfsPart.SearchParties_response_element)System.WebServiceCallout.endInvoke(this);
            return response.Party;
        }
    }
    public class MaintainParty_response_elementFuture extends System.WebServiceCalloutFuture {
        public wwwEsbManulifeComXsdWealthPfsPart.MaintainParty_response_element getValue() {
            wwwEsbManulifeComXsdWealthPfsPart.MaintainParty_response_element response = (wwwEsbManulifeComXsdWealthPfsPart.MaintainParty_response_element)System.WebServiceCallout.endInvoke(this);
            return response;
        }
    }
}