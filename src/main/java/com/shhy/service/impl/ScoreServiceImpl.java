package com.shhy.service.impl;

import com.shhy.dao.CourseMapper;
import com.shhy.dao.ScoreMapper;
import com.shhy.domain.Score;
import com.shhy.domain.ScoreSC;
import com.shhy.domain.ScoreTC;
import com.shhy.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreServiceImpl implements ScoreService {
    @Autowired
    private ScoreMapper scoreMapper;

    @Override
    public Integer insert(Score score) {
        return scoreMapper.insert(score);
    }

    @Override
    public Integer delete(Integer sid, Integer cid) {
        return scoreMapper.delete(sid, cid);
    }

    @Override
    public Integer update(Score score) {
        return scoreMapper.update(score);
    }

    @Override
    public List<ScoreSC> studentFindAllScore(Integer sid) {
        return scoreMapper.studentFindAllScore(sid);
    }

    @Override
    public ScoreSC studentFindOneScore(String cname, Integer sid) {
        return scoreMapper.studentFindOneScore(cname, sid);
    }

    @Override
    public List<ScoreTC> teacherFindAllScore(Integer tid) {
        return scoreMapper.teacherFindAllScore(tid);
    }

    @Override
    public ScoreTC teacherFindOneScore(String cname, Integer tid) {
        return scoreMapper.teacherFindOneScore(cname, tid);
    }
}
