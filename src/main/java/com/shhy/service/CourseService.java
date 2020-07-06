package com.shhy.service;

import com.shhy.domain.Course;

import java.util.List;

public interface CourseService {
    Integer insert(Course course);
    Integer delete(Integer cid);
    Integer update(Course course);
    List<Course> findAll();
    Course findOne(Integer cid);
}
