package com.cxs.mapper;

import com.cxs.model.Menu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* @author lenovo
* @description 针对表【t_menu(菜单权限表)】的数据库操作Mapper
* @createDate 2022-11-17 11:45:53
* @Entity com.cxs.model.Menu
*/
public interface MenuMapper extends BaseMapper<Menu> {
    /**
     * 根据userId获取所有menuId
     * @param userId
     * @return
     */
    List<Integer> getAllMenuIdByUserId(@Param("userId") String userId);
}




