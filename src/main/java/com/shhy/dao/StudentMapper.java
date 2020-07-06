package com.shhy.dao;

import com.shhy.domain.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMapper {
    Integer insert(Student student);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer id);//删除一条记录  delete from user where id=xxx;
    Integer update(Student student);//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<Student> findAll();//查找所有记录   select * from user
    Student findOne(Integer id);//查找一条记录,   select * from user where id=xxx
    Student findOneByStudent(Student student);//根据user对象的多个属性匹配,此例中用于登录检查
//    Student findOneByUsername(String username);//根据用户名返回用户信息,用于检测用户是否存在
}
