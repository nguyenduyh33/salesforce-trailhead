@isTest
private class TestVerifyDate {
    @isTest static void testCheckDatesWithin30Days() {
        Date date1 = date.newInstance(2017, 5, 15);
        Date date2 = date.newInstance(2017, 5, 25);
        Date checkDates = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date.newInstance(2017, 5, 25), checkDates);
    }

    @isTest static void testCheckDatesNothWithin30Days() {
        Date date1 = date.newInstance(2017, 1, 15);
        Date date2 = date.newInstance(2017, 5, 16);
        Date checkDates = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date.newInstance(2017, 1, 31), checkDates);
    }
}