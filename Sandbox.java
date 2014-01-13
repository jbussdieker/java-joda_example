import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Sandbox {

    public static void main(String[] args) {
        DateTimeFormatter NBSfmt = DateTimeFormat.forPattern("d/MMM/yyyy:HH:mm:ss Z");

        String date = "13/Jan/2014:15:36:40 +0000";
        DateTime datetime = NBSfmt.parseDateTime(date);
        System.out.println(datetime.toString());
    }

}
