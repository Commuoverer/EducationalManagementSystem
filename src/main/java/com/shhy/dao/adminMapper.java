package com.shhy.dao;

import com.shhy.domain.Administrator;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface adminMapper {

    Integer insert(Administrator administrator);
    Integer delete(Integer id);
    Integer update(Administrator administrator);
    List<Administrator> findAll();
    Administrator findOne(Integer id);
    Administrator findoneByadmin(Administrator administrator);

}
