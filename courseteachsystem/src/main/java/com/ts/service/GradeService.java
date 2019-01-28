package com.ts.service;

import com.ts.entity.Classes;
import com.ts.entity.Grade;

import java.util.List;

public interface GradeService {
    List<Grade> getGradeAll();
    List<Classes> getClassesAll();
}
