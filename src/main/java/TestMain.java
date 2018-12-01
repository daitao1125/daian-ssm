import org.apache.commons.lang.builder.HashCodeBuilder;

public class TestMain {
    public static void main(String[]  args ){
        System.out.println("test login");
        String dt = "29102TT334";
        if(dt.contains("T")){
            dt =   dt.replace('T',' ');
        }

        String hashcode = "12345671234124891234123412341234123400986551234123412342345442341234123123412341234123412341234123441234";
        System.out.println(new HashCodeBuilder().append(hashcode.toCharArray()).toHashCode());
        System.out.println(hashcode.hashCode() & 0x7FFFFFFF);



        Integer hashCode = new HashCodeBuilder().append(hashcode.toCharArray()).toHashCode();
        System.out.println( (hashCode ));
        System.out.println(hashCodeMod("daitao1125",256));



       // System.out.println(dt);
    }

    /**
    * @Description 计算数据表的分表编号
    * @Author daixiangtao
    * @Date 2018/10/29 下午8:19
    */
    public static Integer hashCodeMod(String key,int size){
        if(key == null){
            return 0;
        }
        Integer hashCode = new HashCodeBuilder().append(key.toCharArray()).toHashCode();
        return (hashCode & 0x7FFFFFFF) % size;
    }
}
