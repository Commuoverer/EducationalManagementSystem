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

    @RequestMapping(value = "/update")
    public ModelAndView update(Teacher teacher){
        System.out.println(teacher);
        Integer i = teacherService.update(teacher);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/addForm")
    public String toAddForm(){
        return "teacher/addForm";
    }

    /**
     * 使用户点击后能够跳转到登录页面
     * */
    @RequestMapping(value = "/login")
    public String toLogin(){
        return "teacher/login";
    }

//    @ResponseBody
//    @RequestMapping(value = "/StudentExist")
//    public String StudentExist(@RequestParam(value = "Studentname")String Studentname){
//        Student Student = StudentService.findOneByStudentname(Studentname);
//        if(Student !=null && Student.getStudentname().equals(Studentname)){//表示该用户存在
//            return "yes";
//        } else{
//            return "no";
//        }
//    }

    /**
     * 登录检查
     */
//    @RequestMapping(value = "/loginCheck")
//    public ModelAndView loginCheck(Student Student, HttpSession httpSession){
//        //将前端送入的多个字段封装为Student对象传递给service调用,返回的是数据库中的oneByStudent对象
//        Student oneByStudent = StudentService.findOneByStudent(Student);
//        ModelAndView modelAndView = new ModelAndView();
//        if(oneByStudent != null){//表示从数据库得到了数据并被封装为Student对象
//            httpSession.setAttribute("Student_SESSION",oneByStudent); //将返回的用户信息放入session对象
//            modelAndView.setViewName("redirect:/admin");//重定向到其他页面
//        }else{
//            modelAndView.setViewName("redirect:/Student/login");
//        }
//        System.out.println("用户登录检查");
//        return modelAndView;
//    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession){
        //httpSession.setAttribute("Student_SESSION",null);//清空用户相关的session
        httpSession.invalidate();//使session失效
        //退出登录后,将页面重新定向到login
        return "redirect:/teacher/login";
    }
}
