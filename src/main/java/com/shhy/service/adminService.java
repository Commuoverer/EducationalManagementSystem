package com.shhy.service;

import com.shhy.domain.Administrator;

import java.util.List;

public interface adminService {
    Integer insert(Administrator administrator);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer id);//删除一条记录  delete from user where id=xxx;
    Integer update(Administrator administrator);//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<Administrator> findAll();//查找所有记录   select * from user
    Administrator findOne(Integer id);
    Administrator findoneByadmin(Administrator administrator);
}
