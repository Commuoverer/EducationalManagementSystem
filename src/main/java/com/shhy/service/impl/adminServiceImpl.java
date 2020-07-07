package com.shhy.service.impl;

import com.shhy.dao.adminMapper;
import com.shhy.domain.Administrator;
import com.shhy.service.adminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class adminServiceImpl implements adminService {

    @Autowired
    private adminMapper adminMapper;

    @Override
    public Integer insert(Administrator administrator) {
        return adminMapper.insert(administrator);
    }

    @Override
    public Integer delete(Integer id) {
        return adminMapper.delete(id);
    }

    @Override
    public Integer update(Administrator administrator) {
        return adminMapper.update(administrator);
    }

    @Override
    public List<Administrator> findAll() {
        return adminMapper.findAll();
    }

    @Override
    public Administrator findOne(Integer id) {
        return adminMapper.findOne(id);
    }

    @Override
    public Administrator findoneByadmin(Administrator administrator) {
        return adminMapper.findoneByadmin(administrator);
    }
}
