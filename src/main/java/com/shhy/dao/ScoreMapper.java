package com.shhy.dao;

import com.shhy.domain.Score;
import com.shhy.domain.ScoreSC;
import com.shhy.domain.ScoreTC;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ScoreMapper {

    Integer insert(Score score);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer sid,Integer cid);//删除一条记录  delete from user where id=xxx;
    Integer update(Score score );//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<ScoreSC> studentFindAllScore(Integer sid);//查找所有记录   select * from user
    ScoreSC studentFindOneScore(@Param("cname")String cname, @Param("sid")Integer sid);//查找一条记录,   select * from user where id=xxx
    List<ScoreTC> teacherFindAllScore(Integer tid);
    ScoreTC teacherFindOneScore(@Param("cname")String cname, @Param("tid")Integer tid);
}
