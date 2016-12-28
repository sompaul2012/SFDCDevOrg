global class MassNotesUpdate {
    webservice static Integer insertNotes(string ititles, string iBody, string [] parentIds)
    {
        List<Note> notes = new List<Note>();
        iBody = String.escapeSingleQuotes(iBody);
        for(Id parID:parentIds)
        {
            //insert new Note(Body=iBody,ParentId=parID,Title=ititles);
            notes.add(new Note(Body=iBody,ParentId=parID,Title=ititles));
        }
        insert notes;
        return notes.size();
    }

}