package com.cxs.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cxs.base.BaseResult;
import com.cxs.dto.admin.tag.SaveOrUpdateTagDTO;
import com.cxs.model.Tag;

import javax.servlet.http.HttpServletRequest;

/**
* @author cxs
* @description 针对表【t_tag(标签表)】的数据库操作Service
* @createDate 2022-11-16 14:38:35
*/
public interface TagService extends IService<Tag> {
    /**
     * 获取tag列表
     * @param result
     */
    void getTagList(BaseResult result);

    /**
     * 获取tag列表
     * @param result
     */
    void getRealTimeTagList(BaseResult result);

    /**
     * 新增标签
     * @param dto
     * @param request
     * @param result
     */
    void saveTag(SaveOrUpdateTagDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 修改标签
     * @param dto
     * @param request
     * @param result
     */
    void updateTag(SaveOrUpdateTagDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 删除标签
     * @param id
     * @param request
     * @param result
     */
    void deleteTag(Integer id, HttpServletRequest request, BaseResult result);
}
