package com.ts.web;

import com.ts.entity.Classes;
import com.ts.entity.Grade;
import com.ts.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/api")
public class GradeController {
    @Autowired
    GradeService gradeService;
    @RequestMapping(value = "/getGrade", method = RequestMethod.GET)
    @ResponseBody
    Map<String, Object> getGrade(HttpServletRequest request){
        Map<String, Object> modelMap = new HashMap<>();
        List<Grade> gradeList = gradeService.getGradeAll();
        if(gradeList != null){
            modelMap.put("success", true);
            modelMap.put("data", gradeList);
        }
        else {
            modelMap.put("success", false);
            modelMap.put("errMsg", "结果为空");
        }
        return modelMap;
    }
    @RequestMapping(value = "/getclasses", method = RequestMethod.GET)
    @ResponseBody
    Map<String, Object> getClasses(HttpServletRequest request){
        Map<String, Object> modelMap = new HashMap<>();
        List<Classes> classesList = gradeService.getClassesAll();
        if(classesList != null){
            modelMap.put("success", true);
            modelMap.put("data", classesList);
        }
        else {
            modelMap.put("success", false);
            modelMap.put("errMsg", "结果为空");
        }
        return modelMap;
    }
}
