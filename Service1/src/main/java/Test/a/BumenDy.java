package Test.a;


import Test.a.c.Bemen;
import Test.a.d.Bumen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 创建人:唐国军
 * 创建时间:2022/11/17 19:19
 **/
@Service
public class BumenDy {

    @Autowired
    private Bemen bemen;


    //查询所有部门
    @Transactional
    public List<Bumen> querybumen(){

        return bemen.queryAll();
    }


    //根据id查询部门
    @Transactional
    public Bumen queryBYid(){

        return bemen.queryBYid();
    }





}
