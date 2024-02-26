package com.cxs.constant;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
public interface ResponseStateConstant {
    // 操作成功
    Integer OPERA_SUCCESS = 200;
    // 操作失败
    Integer OPERA_FAIL = 201;
    // 未登录
    Integer NO_LOGIN = 401;
    // 无权限
    Integer NO_PROMISSION = 403;
    // 参数异常
    Integer PARAMETER_ERROR = 400;
    // 服务器错误
    Integer SERVER_ERROR = 500;
}
