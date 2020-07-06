package com.shhy.test;

//spring的单元测试，保证spring能够正常工作

import com.shhy.dao.StudentMapper;
import com.shhy.dao.TeacherMapper;
import com.shhy.domain.Student;
import com.shhy.domain.Teacher;
import com.shhy.service.StudentService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class UserSpringTest {


    @Autowired private StudentService studentService;
    @Test
    public void userServiceTest01()
    {
//        1、加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applocationContext.xml");
//        2、从spring的IOC容器获取已经注入的service
        StudentService userService1 = classPathXmlApplicationContext.getBean("userServiceImpl", StudentService.class);
//        3、调用service指定的方法
        List<Student> users = userService1.findAll();
        for (Student user : users) {
            System.out.println(user);
        }

    }


    @Test
    public void userServiceTest02()
    {
////        1、加载配置文件
//        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applocationContext.xml");
////        2、从spring的IOC容器获取已经注入的service
//        UserService userService = classPathXmlApplicationContext.getBean("userService", UserService.class);
////        3、调用service指定的方法
        List<Student> users = studentService.findAll();
        for (Student user : users) {
            System.out.println(user);
        }

    }



    @Test
    public void test1(){
        ApplicationContext a = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

        TeacherMapper teacherMapper = a.getBean("teacherMapper", TeacherMapper.class);

//            Student student = new Student();
//            student.setSid(1859101);
//            student.setPassword("1");
//            Student oneByStudent = studentMapper.findOneByStudent(student);
//            System.out.println(oneByStudent);

        List<Teacher> all = teacherMapper.findAll();
        for (Teacher teacher : all) {
            System.out.println(teacher);
        }


    }


}
