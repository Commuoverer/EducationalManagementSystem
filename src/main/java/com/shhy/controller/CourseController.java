package com.shhy.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shhy.domain.Course;
import com.shhy.domain.CourseAndTeacher;
import com.shhy.domain.ScoreSC;
import com.shhy.service.CourseService;
import com.shhy.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/course")
public class CourseController {
    @Autowired
    private CourseService courseService;
    private ScoreService scoreService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView findAll(@RequestParam(value = "page",defaultValue = "1")Integer page, @RequestParam(value = "pageSize",defaultValue = "3")Integer pageSize){
        PageHelper.startPage(page,pageSize);
        ModelAndView modelAndView = new ModelAndView("course/allCourses");
        System.out.println("courseController的工作");
        List<CourseAndTeacher> courses = courseService.findAll();
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目
        PageInfo pageinfo = new PageInfo(courses,5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/oneCourses")
    public ModelAndView findoneCourses(@RequestParam(value = "page",defaultValue = "1")Integer page, @RequestParam(value = "pageSize",defaultValue = "3")Integer pageSize,@RequestParam(value = "sid")Integer sid){
        PageHelper.startPage(page,pageSize);
        ModelAndView modelAndView = new ModelAndView("/student/oneCourses");
        System.out.println("courseController的工作");
        System.out.println(sid);
        List<ScoreSC> courses = scoreService.studentFindAllScore(sid);
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目
        System.out.println("间隔");
        PageInfo pageinfo = new PageInfo(courses,5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/insert")
    public ModelAndView insert(Course course) {
        System.out.println(course);
        Integer i = courseService.insert(course);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/delete")
    public ModelAndView delete(@RequestParam Integer id) {
        Integer i = courseService.delete(id);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/findOne")
    public ModelAndView findOne(@RequestParam Integer id) {
        ModelAndView modelAndView = new ModelAndView("course/updateForm");
        Course course = courseService.findOne(id);
        modelAndView.addObject("course", course);
        return modelAndView;
    }

    @RequestMapping(value = "/update")
    public ModelAndView update(Course course) {
        System.out.println(course);
        Integer i = courseService.update(course);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }
}
