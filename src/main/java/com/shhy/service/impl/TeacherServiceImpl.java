package com.shhy.service.impl;

import com.shhy.dao.TeacherMapper;
import com.shhy.domain.Teacher;
import com.shhy.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public Integer insert(Teacher teacher) {
        return teacherMapper.insert(teacher);
    }

    @Override
    public Integer delete(Integer id) {
        return teacherMapper.delete(id);
    }

    @Override
    public Integer update(Teacher teacher) {
        return teacherMapper.update(teacher);
    }

    @Override
    public List<Teacher> findAll() {
        return teacherMapper.findAll();
    }

    @Override
    public Teacher findOne(Integer id) {
        return teacherMapper.findOne(id);
    }

    @Override
    public Teacher findoneByteacher(Teacher teacher) {
        return teacherMapper.findoneByteacher(teacher);
    }
}
