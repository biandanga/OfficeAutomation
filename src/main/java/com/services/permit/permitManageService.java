package com.services.permit;


import com.entity.permit.upRoleUser;

import java.util.List;
import java.util.Map;

public interface permitManageService {
    // 角色查询
    List<Map> listRole();
    //树形菜单查询
    List<Map<String,Object>> getModulTrees(Integer rid);
    //权限修改
    boolean updatePermit(String mid, int rid);
    //添加角色
    boolean saveRole(String rname);
    //删除角色
    boolean deleteRole(int rid);
    //部门查询
    List<Map<String,Object>> listDept();
    //部门查询
    List<Map<String,Object>> getDept();
    //删除部门
    boolean deleteDept(int deptid);
    //修改部门
    boolean updateDept(int DeptId, String DeptType, String DeptName);
    //添加部门
    boolean saveDept(int DeptNumber, String DeptName);
    //用户角色查询
    List<Map<String,Object>> listRoleUser(String personname);
    //修改角色
    boolean updateRole(upRoleUser upru);
    //登陆锁定&&解锁
    String updatelocking(int uid, int ulocking);
    //删除用户角色
    Integer delRoleUser(int uid);
}
