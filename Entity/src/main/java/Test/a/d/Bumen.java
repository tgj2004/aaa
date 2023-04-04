package Test.a.d;

import java.util.HashSet;
import java.util.Set;


public class Bumen {

    private Integer id1;

    private String name1;

    private String addr;

    private Set<Emp> emp=new HashSet<>();

    public Bumen(){}

    public Bumen(Integer id1, String name1, String addr, Set<Emp> emp) {
        this.id1 = id1;
        this.name1 = name1;
        this.addr = addr;
        this.emp = emp;
    }

    public Integer getId1() {
        return id1;
    }

    public void setId1(Integer id1) {
        this.id1 = id1;
    }

    public String getName1() {
        return name1;
    }

    public void setName1(String name1) {
        this.name1 = name1;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Set<Emp> getEmp() {
        return emp;
    }

    public void setEmp(Set<Emp> emp) {
        this.emp = emp;
    }

    @Override
    public String toString() {
        return "Bumen{" +
                "id1=" + id1 +
                ", name1='" + name1 + '\'' +
                ", addr='" + addr + '\'' +
                ", emp=" + emp +
                '}';
    }
}