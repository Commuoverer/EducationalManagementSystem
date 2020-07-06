package com.shhy.controller;


import com.shhy.service.CourseService;
import com.shhy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;


}
