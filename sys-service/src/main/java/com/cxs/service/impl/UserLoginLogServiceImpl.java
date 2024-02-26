package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.UserLoginLog;
import com.cxs.service.UserLoginLogService;
import com.cxs.mapper.UserLoginLogMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_user_login_log(用户登录流水表)】的数据库操作Service实现
* @createDate 2022-11-12 12:37:56
*/
@Service
public class UserLoginLogServiceImpl extends ServiceImpl<UserLoginLogMapper, UserLoginLog> implements UserLoginLogService{

}




