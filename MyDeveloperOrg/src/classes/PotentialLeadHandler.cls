global class PotentialLeadHandler {
    //string rating;
    //Lead ld;
    
        webservice static void PotentialLeadRating(String note_title, Id LeadId)
    {
        Lead ldrec= [select Id,Rating from Lead where Id =: LeadId];
        ldrec.Rating = note_title;
        
        update ldrec;
    }

}