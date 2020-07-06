package com.shhy.controller;

import com.shhy.domain.Teacher;
import com.shhy.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView findall(){
        ModelAndView modelAndView =new ModelAndView("/teacher/list");
        System.out.println("teacherController实现");

        List<Teacher> teachers =teacherService.findAll();

        modelAndView.addObject("teachers",teachers);
        return modelAndView;
    }
}
