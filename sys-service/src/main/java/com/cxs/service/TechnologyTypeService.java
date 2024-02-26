package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.dto.admin.technology.CreateOrUpdateTypeDTO;
import com.cxs.dto.admin.technology.GetFirstTypeListDTO;
import com.cxs.dto.admin.technology.GetSecondTypeListDTO;
import com.cxs.model.TechnologyType;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author cxs
* @description 针对表【t_technology_type(技术分类表)】的数据库操作Service
* @createDate 2022-11-16 15:12:39
*/
public interface TechnologyTypeService extends IService<TechnologyType> {
    /**
     * 获取technology_type分类列表
     * @param result
     */
    void getTechnologyTypeList(BaseResult result);

    /**
     * 获取一级分类列表
     * @param dto
     * @param request
     * @param result
     */
    void getFirstTypeList(GetFirstTypeListDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 获取二级分类列表
     * @param dto
     * @param request
     * @param result
     */
    void getSecondTypeList(GetSecondTypeListDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 创建type
     * @param dto
     * @param request
     * @param result
     */
    void createType(CreateOrUpdateTypeDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 修改type
     * @param dto
     * @param request
     * @param result
     */
    void updateType(CreateOrUpdateTypeDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 获取技术分类
     * @param request
     * @param result
     */
    void getAdminTechnologyTypeList(HttpServletRequest request, BaseResult result);

    /**
     * 删除技术分类
     * @param id
     * @param request
     * @param result
     */
    void deleteAdminTechnologyType(Integer id, HttpServletRequest request, BaseResult result);
}
