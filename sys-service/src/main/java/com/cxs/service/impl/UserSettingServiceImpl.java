package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.UserSetting;
import com.cxs.service.UserSettingService;
import com.cxs.mapper.UserSettingMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_user_setting(用户设置表)】的数据库操作Service实现
* @createDate 2022-12-03 16:53:00
*/
@Service
public class UserSettingServiceImpl extends ServiceImpl<UserSettingMapper, UserSetting>
    implements UserSettingService{

}




