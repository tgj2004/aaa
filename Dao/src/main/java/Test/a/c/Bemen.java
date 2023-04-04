package Test.a.c;

import Test.a.d.Bumen;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * 创建人:唐国军
 * 创建时间:2022/12/7 15:29
 **/
@Repository
public interface Bemen {
    //查询所有
public List<Bumen> queryAll();
   //根据ID查询部门
    public Bumen queryBYid();
}
