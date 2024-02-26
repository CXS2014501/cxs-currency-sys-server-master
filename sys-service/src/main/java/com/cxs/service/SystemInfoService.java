package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.model.SystemInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author DELL
* @description 针对表【t_system_info(站点系统表)】的数据库操作Service
* @createDate 2022-11-29 21:13:29
*/
public interface SystemInfoService extends IService<SystemInfo> {
    /**
     * 获取详情
     * @param request
     * @param result
     */
    void getSystemInfoInfo(HttpServletRequest request, BaseResult result);

    /**
     * 修改
     * @param info
     * @param request
     * @param result
     */
    void updateSystemInfo(SystemInfo info, HttpServletRequest request, BaseResult result);

    /**
     * 管理员获取首页看板统计
     * @param request
     * @param result
     */
    void getSystemStatisticsInfo(HttpServletRequest request, BaseResult result);

    /**
     * 管理员获取范围统计
     * @param request
     * @param result
     */
    void getSystemRangeStatisticsInfo(HttpServletRequest request, BaseResult result);
}
