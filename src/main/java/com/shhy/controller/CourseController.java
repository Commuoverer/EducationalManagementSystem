package com.shhy.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shhy.domain.Course;
import com.shhy.domain.CourseAndTeacher;

import com.shhy.domain.Student;
import com.shhy.domain.Teacher;
import com.shhy.service.CourseService;

import com.shhy.service.StudentService;
import com.shhy.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/course")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/insert")
    public ModelAndView insert(Course course) {
        System.out.println(course);
        Integer i = courseService.insert(course);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }


    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView findAll(CourseAndTeacher courseAndTeacher,@RequestParam(value = "page",defaultValue = "1")Integer page, @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize)
    {
        PageHelper.startPage(page,pageSize);
        ModelAndView modelAndView = new ModelAndView("/course/list");
        Teacher teacher = new Teacher();
        teacher.setTname(courseAndTeacher.getNAME());
        courseAndTeacher.setTeacher(teacher);
        List<CourseAndTeacher> courseAndTeachers  = courseService.findAll(courseAndTeacher);
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目
        PageInfo pageinfo = new PageInfo(courseAndTeachers,5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/findOne")
    public ModelAndView findOne(@RequestParam Integer cid) {
        CourseAndTeacher courseAndTeacher = new CourseAndTeacher();
        courseAndTeacher.setCid(cid);
        ModelAndView modelAndView = new ModelAndView("course/updateForm");
        List<CourseAndTeacher> courseAndTeachers  = courseService.findAll(courseAndTeacher);
        modelAndView.addObject("course", courseAndTeachers);
        return modelAndView;
    }



    @RequestMapping(value = "/delete")
    public ModelAndView delete(@RequestParam Integer id) {
        Integer i = courseService.delete(id);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }



    @RequestMapping(value = "/update")
    public ModelAndView update(Course course) {


        Integer i = courseService.update(course);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/addForm")
    public String toAddForm(){
        return "course/addForm";
    }

    @ResponseBody
    @RequestMapping (value = "/userExist")
    public String userExist(@RequestParam(value = "cid")Integer cid){
        Course course=courseService.findBycid(cid);
        if(course!=null&&course.getCid().equals(cid)){
            return "yes";
        }else {
            return "no";
        }
    }

    @ResponseBody
    @RequestMapping (value = "/userExisttid")
    public String userExisttid(@RequestParam(value = "tid")Integer tid){
        Teacher one = teacherService.findOne(tid);
        if(one!=null&&one.getTid().equals(tid)){
            return "no";
        }else {
            return "yes";
        }
    }

}
