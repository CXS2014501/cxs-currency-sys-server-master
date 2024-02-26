package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.RoleMenu;
import com.cxs.service.RoleMenuService;
import com.cxs.mapper.RoleMenuMapper;
import org.springframework.stereotype.Service;

/**
* @author lenovo
* @description 针对表【t_role_menu(角色菜单关联表)】的数据库操作Service实现
* @createDate 2022-11-17 11:45:53
*/
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu>
    implements RoleMenuService{

}




