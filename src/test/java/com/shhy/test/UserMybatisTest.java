//package com.shhy.test;
//
//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//import com.shhy.dao.StudentMapper;
//import com.shhy.domain.Student;
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.List;
//
//public class UserMybatisTest {
//    private InputStream resourceAsStream;
//    private SqlSessionFactory sqlSessionFactory;
//    private SqlSession sqlSession;
//    private StudentMapper studentMapper;
//
//    /**
//     * 初始化方法
//     */
//    @Before
//    public void init() throws IOException {
//        //        1.加载mybatis的主配置文件
//        resourceAsStream = Resources.getResourceAsStream("mybatis.xml");
////        2.创建SqlSessionFactory对象
//        sqlSessionFactory = new SqlSessionFactoryBuilder().build(this.resourceAsStream);
////        3.获得sqlSession对象 相当于connection对象
//        sqlSession = sqlSessionFactory.openSession(true);//为true时事务自动提交
////        4.获得对应的mapper
//        studentMapper = sqlSession.getMapper(studentMapper.class);
//    }
//
//    @After
//    public void destory() throws IOException {
//        //        6.关闭资源
//        sqlSession.close();
//        resourceAsStream.close();
//    }
//
//
//    /**
//     * 测试方法
//     */
//    @Test
//    public void testMybatisUserFindOne(){
//        Student user = studentMapper.findOne(2);
//        System.out.println(user);
//    }
//
//    @Test
//    public void testMybatisUserFindAll(){
//        List<User> users = studentMapper.findAll();
//        for (User user : users) {
//            System.out.println(user);
//        }
//    }
//
//    @Test
//    public void testMybatisUserInsert(){
//        User user = new User();
//        user.setUsername("李四");
//        user.setPassword("123456");
//        Integer i = userMapper.insert(user);
//        System.out.println("有"+ i + "条记录被插入");
//        //sqlSession.commit();//手动提交事务,对于增删改操作都需要提交事务,在获取sqlSession对象时设置为自动提交
//    }
//
//    @Test
//    public void testMybatisUserUpdate(){
//        User user = new User();
//        user.setId(2);
//        user.setUsername("王五");
//        user.setPassword("666666");
//        Integer i = userMapper.update(user);
//        System.out.println("有"+ i + "条记录被更新");
//    }
//
//    @Test
//    public void testMybatisUserDelete(){
//        Integer i = userMapper.delete(6);
//        System.out.println("有"+ i + "条记录被删除");
//    }
//}
