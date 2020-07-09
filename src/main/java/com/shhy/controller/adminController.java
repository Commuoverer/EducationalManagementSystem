package com.shhy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shhy.domain.Administrator;
import com.shhy.domain.Student;
import com.shhy.domain.Teacher;
import com.shhy.service.adminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping(value = "/administrator")
public class adminController {
    @Autowired
    private adminService adminservice;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView findAll(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "pageSize", defaultValue = "3") Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        ModelAndView modelAndView = new ModelAndView("/administrator/list");
        System.out.println("StudentController的工作");
        List<Administrator> administrators = adminservice.findAll();
        //创建一个PageInfo对象,用以封装查询到的数据,同时指定页码导航列表的数目
        PageInfo pageinfo = new PageInfo(administrators, 5);
        //将PageInfo对象封装到模型中
        modelAndView.addObject("pageinfo", pageinfo);
        return modelAndView;
    }

    @RequestMapping(value = "/insert")
    public ModelAndView insert(Administrator administrator) {
        System.out.println(administrator);
        Integer i = adminservice.insert(administrator);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/delete")
    public ModelAndView delete(@RequestParam Integer id) {
        Integer i = adminservice.delete(id);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

    @RequestMapping(value = "/findOne")
    public ModelAndView findOne(@RequestParam Integer id) {
        ModelAndView modelAndView = new ModelAndView("administrator/updateForm");
        Administrator administrator= adminservice.findOne(id);
        modelAndView.addObject("administrator", administrator);
        return modelAndView;
    }

    @RequestMapping(value = "/update")
    public ModelAndView update(Administrator administrator) {
        System.out.println(administrator);
        Integer i = adminservice.update(administrator);
        ModelAndView modelAndView = new ModelAndView("redirect:list");
        return modelAndView;
    }

//    @RequestMapping(value = "/update")
//    public ModelAndView update(Administrator administrator, HttpServletRequest request, @RequestParam(value = "file")MultipartFile file) throws IOException {
//        //设置图片的存储路径
//        String path = request.getSession().getServletContext().getRealPath("/images/users");
//        //获取图片的文件名
//        String filename = UUID.randomUUID() + "-" + file.getOriginalFilename();
//        File dir = new File(path, filename);
//        if(!dir.exists()){
//            dir.mkdirs();
//        }
//
////        上传文件
//        file.transferTo(dir);
//        //photo名字拼接
//        String imageurl = "images/users/" + filename;
//        administrator.setPhoto(imageurl);
//
//        ModelAndView modelAndView = new ModelAndView("administrator/admin");
//        adminservice.update(administrator);
//        return modelAndView;
//    }


    @RequestMapping(value = "/addForm")
    public String toAddForm() {
        return "administrator/addForm";
    }

    /**
     * 使用户点击后能够跳转到登录页面
     */
    @RequestMapping(value = "/updateForm")
    public String toUpdateForm(){
        return "administrator/updateForm";
    }

    @RequestMapping(value = "/login")
    public String toLogin() {
        return "administrator/login";
    }

    @RequestMapping(value = "/admin")
    public String toAdmin() {
        return "administrator/admin";
    }

    @RequestMapping(value = "/student/list")
    public String toStudentList() {
        return "/student/list";
    }

    @RequestMapping(value = "/student/addForm")
    public String toStudentAdd() {
        return "/student/addForm";
    }

    @RequestMapping(value = "/teacher/list")
    public String toTeacherList() {
        return "/teacher/list";
    }

    @RequestMapping(value = "/teacher/addForm")
    public String toTeacherAdd() {
        return "/teacher/addForm";
    }

    @RequestMapping(value = "/course/addForm")
    public String toCourseAdd() {
        return "/course/addForm";
    }

    @RequestMapping(value = "/course/list")
    public String toCourseList() {
        return "/course/list";
    }


    /**
     * 登录检查
     */
    @RequestMapping(value = "/adminLoginCheck")
    public ModelAndView loginCheck(Administrator administrator, HttpSession httpSession) {
        //将前端送入的多个字段封装为Student对象传递给service调用,返回的是数据库中的oneByStudent对象
        Administrator oneByadmin = adminservice.findoneByadmin(administrator);
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(">>>>>>>>>>>>>>>>>" + oneByadmin);
        if (oneByadmin != null) {//表示从数据库得到了数据并被封装为Student对象
            httpSession.setAttribute("ADMIN_SESSION", oneByadmin); //将返回的用户信息放入session对象
            modelAndView.setViewName("redirect:/administrator/admin");//重定向到其他页面
        } else {
            modelAndView.setViewName("redirect:/administrator/login");
        }
        System.out.println("用户登录检查");
        return modelAndView;
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession httpSession) {
        //httpSession.setAttribute("Student_SESSION",null);//清空用户相关的session
        httpSession.invalidate();//使session失效
        //退出登录后,将页面重新定向到login
        return "redirect:/administrator/login";
    }

    @ResponseBody
    @RequestMapping (value = "/userExist")
    public String userExist(@RequestParam(value = "id")Integer id){
        Administrator administrator=adminservice.findOne(id);
        if(administrator!=null&&administrator.getId().equals(id)){
            return "yes";
        }else {
            return "no";
        }
    }
}
