public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String searchTerm) {
        List<List< SObject>> searchList = [FIND :searchTerm IN NAME FIELDS
                                          RETURNING Contact(FirstName, LastName),
                                          Lead(FirstName, LastName)];
        System.debug(searchList);
        return searchList;
    }
}