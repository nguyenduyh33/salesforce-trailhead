@isTest
public class TestRestrictContactByName {
	
    @isTest static void TestRestrictionWithInvalidName() {
        // Test data setup
        // Create one contact with the last name of INVALIDNAME
        Contact[] contacts = RandomContactFactory.generateRandomContacts(1, 'INVALIDNAME');
        
        Test.startTest();
        Database.SaveResult result = Database.insert(contacts[0], false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', 
                            result.getErrors()[0].getMessage());
    }
}