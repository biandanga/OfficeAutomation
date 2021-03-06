package com.services.adinistration;

import java.util.List;
import java.util.Map;

import com.entity.adinistration.Apply;
import com.entity.adinistration.Bank;
import com.entity.adinistration.Sort;
import com.entity.adinistration.Worksurface;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

public interface worksurfaceServicesDao {
    //办公用品查询
    /*public List<Map> query_worksurface(Integer pageNum,String workName);*/
    //条件查询
    List<Map<String,Object>> query_worksurface(@Param("workName") String workName);
    //办公用品增加
    int save_worksurface(Worksurface worksurface);
    //办公用品修改
    int update_worksurface(Worksurface worksurface);
    //办公用品删除
    int delete_worksurface(Worksurface worksurface);
    //查询
    List<Map<String,Object>> query_worksurface1();
    //分页
    /*public PageInfo<Map> queryPage(Integer pageNum);*/
    /*
     * 办公用品类别
     * */
    //办公用品类别--查询
    List<Map<String,Object>> query_sort(@Param("sortStyle") String sortStyle);
    //办公用品类别--删除
    int delete_sort(Sort s);
    //办公用品类别--增加
    int save_sort(Sort s);
    //办公用品类别--修改
    int update_sort(Sort s);




    /*
     * 办公用品库
     * */
    //办公用品库增加
    int save_bank(Bank b);
    //办公用品库查询(类别用)
    List<Map<String,Object>> query_bank();
    //办公用品库查询
    List<Map<String,Object>> query_bank1(@Param("bBankname") String bBankname);
    //职员查询(库用)
    List<Map<String,Object>> query_tbPersoninfo();
    //办公用品库删除
    int delete_bank(Bank b);
    //办公用品库--修改
    int update_bank(Bank b);

    /*
     * 申请用品--记录
     * */
    //申请用品查询
    List<Map<String,Object>> query_apply();
    //根据状态查询
    List<Map<String,Object>> query_apply1();
    //申请用品删除
    int delete_apply(Apply ap);
    //申请用品增加
    int save_apply(Apply ap);
    //库存修改
    int update_kucun(int applyId);
    //申领记录 修改
    int update_apply(Apply ap);


   /* //更新状态
    public int updateState(Apply ap);*/
    //更新状态(2)
   int updateStat(Apply ap);

    /*
    * 分页模糊查询
    * */
    List<Map<String,Object>> pageWorksurface(String name);
}
