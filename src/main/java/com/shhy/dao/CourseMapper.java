package com.shhy.dao;

import com.shhy.domain.Course;
import com.shhy.domain.CourseAndTeacher;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CourseMapper {

    Integer insert(Course course);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer cid);//删除一条记录  delete from user where id=xxx;
    Integer update(Course course);//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx

    List<CourseAndTeacher> findAll(CourseAndTeacher courseAndTeacher);//查询所有课程记录



}
