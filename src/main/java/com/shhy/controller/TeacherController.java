package com.shhy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shhy.domain.Student;
import com.shhy.domain.Teacher;
import com.shhy.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView findAll(@RequestParam(value = "page",defaultValue = "1")Integer page, @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize){
        PageHelper.startPage(page,pageSize);
        ModelAndView modelAndView = new ModelAndView("/teacher/list");
        System.out.println("teacherController的工作");
        List<Teacher> teachers = teacherService.findAll();
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目
        PageInfo pageinfo = new PageInfo(teachers,5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/insert")
    public ModelAndView insert(Teacher teacher){
        System.out.println(teacher);
        Integer i = teacherService.insert(teacher);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/delete")
    public ModelAndView delete(@RequestParam Integer id){
        Integer i = teacherService.delete(id);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
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


    /**
     * 登录检查
     */
    @RequestMapping(value = "/teacherLoginCheck")
    public ModelAndView loginCheck(Teacher teacher, HttpSession httpSession) {
        Teacher onebyteacher = teacherService.findoneByteacher(teacher);
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(">>>>>>>>>>>>>>>>>" + onebyteacher);
        if (onebyteacher != null) {
            httpSession.setAttribute("TEACHER_SESSION", onebyteacher);
            modelAndView.setViewName("redirect:/teacher/list");//重定向到其他页面
        } else {
            modelAndView.setViewName("redirect:/teacher/login");
        }
        System.out.println("用户登录检查");
        return modelAndView;
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession){
        httpSession.invalidate();//使session失效
        //退出登录后,将页面重新定向到login
        return "redirect:/teacher/login";
    }
}
