package com.cxs.service;

import com.cxs.base.BaseResult;

import javax.servlet.http.HttpServletRequest;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
public interface SystemService {
    /**
     * 获取关于本站信息
     * @param request
     * @param result
     */
    void getAboutSysInfo(HttpServletRequest request, BaseResult result);

    /**
     * 关于本站
     * @param request
     * @param result
     */
    void getSystemInfo(HttpServletRequest request, BaseResult result);
}
