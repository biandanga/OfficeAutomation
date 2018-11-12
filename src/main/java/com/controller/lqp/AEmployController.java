package com.controller.lqp;

import com.entity.lqp.TbPersoninfo;
import com.entity.lqp.TbRecruitmentemployed;
import com.entity.lqp.TbRecruitmentneed;
import com.services.lqp.AEmployServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="/employ")
public class AEmployController {
    @Autowired
    private AEmployServiceImp employ;

    @ResponseBody
    @RequestMapping(value="/selectAllemploy")
    public Map<String,Object> select(){
        Map<String,Object> map = new HashMap<String, Object>();
        List<Map> list = employ.findemployall();
        map.put("list", list);
        return map;
    }
    @ResponseBody
    @RequestMapping(value="/employname")
    public List<Map<String,Object>> selectemploy(){
        Map<String,Object> map = new HashMap<String,Object>();
        List<Map<String,Object>> list =employ.findemploybyname();
        return list;
    }
    @ResponseBody
    @RequestMapping(value="/employnamep")
    public List<Map<String,Object>> selectemployp(){
        Map<String,Object> map = new HashMap<String,Object>();
        List<Map<String,Object>> list =employ.findemploybynamep();

        return list;
    }
    @ResponseBody
    @RequestMapping(value="/findbyShaixuan")
    public List<Map<String,Object>> findbyShaixuan(TbRecruitmentemployed tbRecruitmentemployed){
        Map<String,Object> map = new HashMap<String,Object>();
        List<Map<String,Object>> list =employ.findShaixuan(tbRecruitmentemployed);
        return list;
    }
    @ResponseBody
    @RequestMapping(value="/insertemploy")
    public String insertemploy(TbRecruitmentemployed tbRecruitmentemployed){
        Map<String, Object> map = new HashMap<String, Object>();
        int a =employ.insertemploy(tbRecruitmentemployed);
        System.out.println("影响行数"+a);
        System.out.println(map);
        map.put("a", a);
        return "redirect:/employ/selectAllemploy";
    }

    @ResponseBody
    @RequestMapping(value="/deleteemploy")
    public String deleteemploy(TbRecruitmentemployed tbRecruitmentemployed){
        Map<String,Object> map = new HashMap<String, Object>();
        int delete = employ.deleteemploy(tbRecruitmentemployed);
        map.put("delete", delete);
        System.out.println("删除");
        return "redirect:/employ/selectAllemploy";
    }
    @ResponseBody
    @RequestMapping(value="/updateemploy")
    public String updateemploy(TbRecruitmentemployed tbRecruitmentemployed){
        Map<String,Object> map = new HashMap<String, Object>();
        employ.updateemploy(tbRecruitmentemployed);
        System.out.println(tbRecruitmentemployed);
        return "redirect:/employ/selectAllemploy";
    }
    @ResponseBody
    @RequestMapping(value="/updatbyShaixuan")
    public String updatbyShaixuan(TbRecruitmentemployed tbRecruitmentemployed){
        Map<String,Object> map = new HashMap<String, Object>();
        employ.updateShaixuan(tbRecruitmentemployed);
        System.out.println(tbRecruitmentemployed);
        return "redirect:/employ/findbyShaixuan";
    }
}
