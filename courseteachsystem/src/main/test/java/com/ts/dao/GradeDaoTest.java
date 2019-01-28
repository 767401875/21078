package com.ts.dao;

import com.ts.BaseTest;
import com.ts.entity.Classes;
import com.ts.entity.Grade;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class GradeDaoTest extends BaseTest {
    @Autowired
    GradeDao gradeDao;
    @Test
    @Ignore
    public void queryGradeTest(){
        List<Grade> gradeList = gradeDao.queryGrade();
        for(Grade grade : gradeList){
            System.out.println(grade.getCourseName());
        }
    }
    @Test
    public void queryClassesAllTest(){
        List<Classes> classesList = gradeDao.queryClassesAll();
        for (Classes classes : classesList){
            System.out.println(classes.getStudentName());
        }
    }
}
