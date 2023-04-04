package Test.a;


import Test.a.c.Emps;

import Test.a.d.Emp;
import Test.a.d.page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



/**
 * 创建人:唐国军
 * 创建时间:2022/11/17 19:19
 **/
@Service
public class EmpDy {

    @Autowired
    private Emps emps;

    @Transactional
    public void getall(page page)
    {
        long count=emps.getcount();
        //计算开始下标
        int ss =(page.getPageNo()-1) * page.getPageSize();
        //把开始的下班设置到Td
        page.setTd(ss);

        page.setSum(Integer.valueOf(String.valueOf(count)));

        page.setList(emps.getall(page));

    }


    //根据id查询员工
    @Transactional
    public Emp queryid(int id){

        return emps.queryid(id);
    }

    //根据id删除
    public  void deleteid(int id)
    {
        emps.deleteid(id);
    }
    //新增
    @Transactional
    public  void addusers(Emp emp)
    {
        emps.adds(emp);
    }

    //修改
    public void updateemp(Emp emp){
        emps.updateemp(emp);
    };


}
