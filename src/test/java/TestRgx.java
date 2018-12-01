import java.util.regex.Pattern;

/**
 * @author daixiangtao
 * @description
 * @date 2018/11/16 11:19 AM
 */
public class TestRgx {

    public static void main(String[] args)throws Exception {
        REGEX_MOBILE ="^[1][0-9]{10}$";
        System.out.println(isMobile("18711510668"));
        Pattern.matches("^[1][0-9]{10}$", "18711510668");

    }
    public  static String REGEX_MOBILE = "^((17[0-9])|(14[0-9])|(13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";


    public static boolean isMobile(String mobile) {
        return Pattern.matches(REGEX_MOBILE, mobile);
    }

}
