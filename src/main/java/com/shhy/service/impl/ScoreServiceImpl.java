package com.shhy.service.impl;

import com.shhy.dao.ScoreMapper;
import com.shhy.domain.Score;



import com.shhy.domain.ScoreSCT;

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
    public Integer delete(Integer cid,Integer sid) {
        return scoreMapper.delete(cid, sid);
    }

    @Override
    public Integer update(Score score) {
        return scoreMapper.update(score);
    }

    @Override
    public List<ScoreSCT> findAll(ScoreSCT scoreSCT) {
        return scoreMapper.findAll(scoreSCT);

    }


}
