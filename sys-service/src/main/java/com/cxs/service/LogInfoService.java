package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.dto.admin.log.GetLogListDTO;
import com.cxs.model.LogInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author DELL
* @description 针对表【t_log_info(日志表)】的数据库操作Service
* @createDate 2022-12-05 22:40:19
*/
public interface LogInfoService extends IService<LogInfo> {

    /**
     * 查询日志
     * @param dto
     * @param request
     * @param result
     */
    void getLogList(GetLogListDTO dto, HttpServletRequest request, BaseResult result);
}
