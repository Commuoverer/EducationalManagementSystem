package com.shhy.dao;

import com.shhy.domain.Teacher;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherMapper {
    Integer insert(Teacher teacher);
    Integer delete(Integer tid);
    Integer update(Teacher teacher);
    List<Teacher> findAll();
    Teacher findOne(Integer tid);
    Teacher findoneByteacher(Teacher teacher);
    Teacher findBytname(String tname);//录入教师信息检测重名
}