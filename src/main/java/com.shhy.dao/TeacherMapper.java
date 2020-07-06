package com.shhy.dao;

import com.shhy.domain.Student;
import com.shhy.domain.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
public interface TeacherMapper {
    Integer insert(Teacher teacher);
    Integer delete(Integer id);
    Integer update(Teacher teacher);
    List<Teacher> findAll();
    Teacher findOne(Integer id);
}