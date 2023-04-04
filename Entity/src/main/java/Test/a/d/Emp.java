package Test.a.d;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.util.Date;


public class Emp {

//JSR 303数据校验
//@Null //被注释的元素必须为null
//@NotNull//被注释的元素不能null
//@AssertTrue//被注释的元素必须是true
// @AssertFalse//被注释的元素必须是false
// 最大不能超过10000 @Max(value =10000)
//最小不能小于1000 @Min(value =1000)
//@DecimalMin//注释的元素必须是一个数字 他的值必须大于等于指定最小值
//@DecimalMax//注释的元素必须是一个数字 他的值必须小于等于指定最大值
//@Size(max = 100,min =10)//注释的元素大小必须下指定的范围内
//@Digits(integer =10,fraction =100)//被注释的元素必须是一个数字 值必须在可接受内
//@Past//注释的元素必须是一个过去的日期
//@Future//注释的元素必须是一个将来的日期//
// @Pattern()//被注释的元素必须是一个符合指定的正则表达式
//@Email//被注释的元素必须是电子邮箱地址
//@Length//字符串长度必须要在指定范围内
//@NotEmpty//被注释的字符串必须非空
//@Range//被注释的元素必须大小必须在合适的范围内


    private Integer id;
    @NotNull
    private String name;
    @NotNull
    @Email
    private String email;
    @NotNull
    private Integer sex;

    @NotNull
    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")//主要是限制前台的时间格式
    private Date time;
    //数值在设置之间

    @NumberFormat(pattern = "#,###,###.##")
    @NotNull
    private Float gongzi;
    private String touxiang;
    @NotNull
    private Bumen bumen;
    private String txzm;

    public Emp() {

    }

    public Emp(String touxiang) {
        this.touxiang = touxiang;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Float getGongzi() {
        return gongzi;
    }

    public void setGongzi(Float gongzi) {
        this.gongzi = gongzi;
    }

    public String getTouxiang() {
        return touxiang;
    }

    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang;
    }


    public Bumen getBumen() {
        return bumen;
    }

    public void setBumen(Bumen bumen) {
        this.bumen = bumen;
    }


    public String getTxzm() {
        return txzm;
    }

    public void setTxzm(String txzm) {
        this.txzm = txzm;
    }


    @Override
    public String toString() {
        return "Emp{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", sex=" + sex +
                ", time=" + time +
                ", gongzi=" + gongzi +
                ", touxiang='" + touxiang + '\'' +
                ", bumen=" + bumen +
                ", txzm='" + txzm + '\'' +
                '}';
    }
}
