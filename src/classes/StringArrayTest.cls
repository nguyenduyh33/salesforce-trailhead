public class StringArrayTest {
    
    public static String[] generateStringArray(Integer numbers) {
        String[] arrayOfStrings = new String[]{};
        for (Integer i = 1; i <= numbers; i++) {
            arrayOfStrings.add('Test ' + i);
        }
        return arrayOfStrings;
    }

}