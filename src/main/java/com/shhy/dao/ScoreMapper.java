package com.shhy.dao;


import com.shhy.domain.*;

import com.shhy.domain.Score;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ScoreMapper {

    Integer insert(Score score);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Score score);//删除一条记录  delete from user where id=xxx;
    Integer update(Score score );//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<ScoreSCT> findAll(ScoreSCT scoreSCT);

}
