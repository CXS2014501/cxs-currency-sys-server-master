package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.UserRole;
import com.cxs.service.UserRoleService;
import com.cxs.mapper.UserRoleMapper;
import org.springframework.stereotype.Service;

/**
* @author lenovo
* @description 针对表【t_user_role(用户角色关联表)】的数据库操作Service实现
* @createDate 2022-11-17 11:45:53
*/
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole>
    implements UserRoleService{

}




