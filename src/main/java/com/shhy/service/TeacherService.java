package com.shhy.service;

import com.shhy.domain.Teacher;

import java.util.List;

public interface TeacherService {
    Integer insert(Teacher teacher);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer id);//删除一条记录  delete from user where id=xxx;
    Integer update(Teacher teacher);//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<Teacher> findAll();//查找所有记录   select * from user
    Teacher findOne(Integer id);
    Teacher findoneByteacher(Teacher teacher);
}
