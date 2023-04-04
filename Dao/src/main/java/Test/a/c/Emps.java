package Test.a.c;

import Test.a.d.Emp;
import Test.a.d.page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 创建人:唐国军
 * 创建时间:2022/12/7 15:31
 **/
@Repository
public interface Emps {
//    其实只是一个很小的问题没有注意到需要加一个@Param注解。由于mybatis将接口中的String参数解析为bean属性，
//    就需要有set，get方法，set,get方法一般都写在实体类中，接口中的属性可以通过@Param()注解来实现setter,getter方法。
    //根据id查询
    public Emp queryid(@Param("id")int id);

    //新增
    public void adds(Emp emp);
    //修改
    public void updateemp(Emp emp);
    //删除
    //其实只是一个很小的问题没有注意到需要加一个@Param注解。由于mybatis将接口中的String参数解析为bean属性，
    // 就需要有set，get方法，set,get方法一般都写在实体类中，接口中的属性可以通过@Param()注解来实现setter,getter方法。
    public void deleteid(@Param("id") int id);
    //查询数量
    public long getcount();
//    public int getcount();
    //查询所有 分页
    public List<Emp> getall(page page);


}
