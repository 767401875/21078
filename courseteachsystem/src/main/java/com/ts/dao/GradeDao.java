package com.ts.dao;

import com.ts.entity.Classes;
import com.ts.entity.Grade;

import java.util.List;

public interface GradeDao {
    List<Grade> queryGrade();
    List<Classes> queryClassesAll();
}
