package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.dto.article.SaveOrUpdateArticleDTO;
import com.cxs.dto.article.SaveOrUpdateArticleDraftDTO;
import com.cxs.model.ArticleDraft;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author DELL
* @description 针对表【t_article_draft(文章草稿表)】的数据库操作Service
* @createDate 2022-11-26 17:23:45
*/
public interface ArticleDraftService extends IService<ArticleDraft> {

    /**
     * 获取草稿
     * @param request
     * @param result
     */
    void getArticleDraft(HttpServletRequest request, BaseResult result);

    /**
     * 保存、修改草稿
     * @param dto
     * @param request
     * @param result
     */
    void saveOrUpdateDraft(SaveOrUpdateArticleDraftDTO dto, HttpServletRequest request, BaseResult result);

    /**
     * 用户删除草稿
     * @param request
     * @param result
     */
    void deleteDraft(HttpServletRequest request, BaseResult result);

}
