package com.dao.permit;


import com.entity.permit.TbUser;

import java.util.List;
import java.util.Map;

public interface permitLogin {
    //登陆
    public List<Map> getlogin(TbUser tbUser);
    //黑名单查询
    public List<Map> LoginLacklist(int userid);
    //登陆菜单查询
    public List<Map> ListTree(int userid);
    //二级菜单查询
    public List<Map> ListTrees(int m_id);
}
