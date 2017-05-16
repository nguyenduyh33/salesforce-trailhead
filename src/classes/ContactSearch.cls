public class ContactSearch {
	
    public static List<Contact> searchForContacts(String lastName, String mailingPostalCode) {
        List<Contact> contacts = [SELECT LastName, MailingPostalCode from Contact
                                 Where LastName = :lastName
                                 AND MailingPostalCode = :mailingPostalCode];
        System.debug(contacts);
        return contacts;
    }
}