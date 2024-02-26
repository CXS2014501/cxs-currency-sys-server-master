package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.ArticleTag;
import com.cxs.service.ArticleTagService;
import com.cxs.mapper.ArticleTagMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_article_tag(文章-标签关联表)】的数据库操作Service实现
* @createDate 2022-11-26 09:00:21
*/
@Service
public class ArticleTagServiceImpl extends ServiceImpl<ArticleTagMapper, ArticleTag>
    implements ArticleTagService{

}




