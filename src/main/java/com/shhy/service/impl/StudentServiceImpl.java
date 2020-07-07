package com.shhy.service.impl;

import com.shhy.dao.StudentMapper;
import com.shhy.domain.Student;
import com.shhy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public Integer insert(Student student) {
        return studentMapper.insert(student);
    }

    @Override
    public Integer delete(Integer id) {
        return studentMapper.delete(id);
    }

    @Override
    public Integer update(Student student) {
        return studentMapper.update(student);
    }

    @Override
    public List<Student> findAll() {
        return studentMapper.findAll();
    }

    @Override
    public Student findOne(Integer id) {
        return studentMapper.findOne(id);
    }

    @Override
    public Student findOneByStudent(Student student) {
        Student oneByStudent = studentMapper.findOneByStudent(student);
        return oneByStudent;
    }
}
