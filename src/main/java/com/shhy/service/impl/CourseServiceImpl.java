package com.shhy.service.impl;

import com.shhy.dao.CourseMapper;
import com.shhy.dao.ScoreMapper;
import com.shhy.domain.Course;
import com.shhy.domain.CourseAndTeacher;
import com.shhy.service.CourseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CourseServiceImpl implements CourseService {


    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private ScoreMapper scoreMapper;

    @Override
    public Integer insert(Course course) {
        return courseMapper.insert(course);
    }

    @Override
    public Integer delete(Integer cid) {
        scoreMapper.delete(cid,null);
        return courseMapper.delete(cid);
    }

    @Override
    public Integer update(Course course) {
        return courseMapper.update(course);
    }

    @Override
    public List<CourseAndTeacher> findAll(CourseAndTeacher courseAndTeacher) {
        return courseMapper.findAll(courseAndTeacher);
    }




}
