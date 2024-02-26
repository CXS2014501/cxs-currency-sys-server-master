package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.UserReward;
import com.cxs.service.UserRewardService;
import com.cxs.mapper.UserRewardMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_user_reward(用户打赏配置表)】的数据库操作Service实现
* @createDate 2022-12-03 16:53:01
*/
@Service
public class UserRewardServiceImpl extends ServiceImpl<UserRewardMapper, UserReward>
    implements UserRewardService{

}




