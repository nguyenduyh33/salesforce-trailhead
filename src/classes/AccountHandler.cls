public class AccountHandler {
    
    public static Account insertNewAccount(String name) {
        Account acct = new Account(Name = name);
        try {
            insert acct;
            return acct;
        } catch (DmlException e) {
            System.debug('A DML exception has occured: ' + e.getMessage());
            return null;
        }
    }

}