package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.dto.admin.notice.GetNoticeListDTO;
import com.cxs.dto.admin.notice.SaveOrUpdateNoticeDTO;
import com.cxs.model.NoticeInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author DELL
* @description 针对表【t_notice_info(公告信息表)】的数据库操作Service
* @createDate 2022-12-06 16:08:25
*/
public interface NoticeInfoService extends IService<NoticeInfo> {

    /**
     * 获取公告列表
     * @param dto
     * @param request
     * @param result
     */
    void getNoticeList(GetNoticeListDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 新增、修改公告
     * @param dto
     * @param request
     * @param result
     */
    void saveOrUpdateNotice(SaveOrUpdateNoticeDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 删除公告
     * @param id
     * @param request
     * @param result
     */
    void deleteNotice(Integer id, HttpServletRequest request, BaseResult result);

    /**
     * 管理员获取公告详情
     * @param id
     * @param request
     * @param result
     */
    void getNoticeInfo(Integer id, HttpServletRequest request, BaseResult result);

    /**
     * 用户获取首页轮询公告
     * @param request
     * @param result
     */
    void getPushNoticeList(Integer type, HttpServletRequest request, BaseResult result);
}
