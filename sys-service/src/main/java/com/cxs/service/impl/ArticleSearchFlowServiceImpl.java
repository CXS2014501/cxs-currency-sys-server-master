package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.ArticleSearchFlow;
import com.cxs.service.ArticleSearchFlowService;
import com.cxs.mapper.ArticleSearchFlowMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_article_search_flow(文章搜索次数记录表)】的数据库操作Service实现
* @createDate 2022-12-02 11:34:33
*/
@Service
public class ArticleSearchFlowServiceImpl extends ServiceImpl<ArticleSearchFlowMapper, ArticleSearchFlow>
    implements ArticleSearchFlowService{

}




