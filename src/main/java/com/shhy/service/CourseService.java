package com.shhy.service;

import com.shhy.domain.Course;
import com.shhy.domain.CourseAndTeacher;

import java.util.List;

public interface CourseService {
    Integer insert(Course course);
    Integer delete(Integer cid);
    Integer update(Course course);
    List<CourseAndTeacher> findAll();
    CourseAndTeacher findOne(String cname);
}
