package com.ts.service.impl;

import com.ts.dao.GradeDao;
import com.ts.entity.Classes;
import com.ts.entity.Grade;
import com.ts.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeServiceImpl implements GradeService {
    @Autowired
    GradeDao gradeDao;
    @Override
    public List<Grade> getGradeAll() {
        return gradeDao.queryGrade();
    }

    @Override
    public List<Classes> getClassesAll() {
        return gradeDao.queryClassesAll();
    }
}
