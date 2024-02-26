package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.ArticleCollection;
import com.cxs.service.ArticleCollectionService;
import com.cxs.mapper.ArticleCollectionMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_article_collection(文章收藏表)】的数据库操作Service实现
* @createDate 2022-11-26 09:00:21
*/
@Service
public class ArticleCollectionServiceImpl extends ServiceImpl<ArticleCollectionMapper, ArticleCollection>
    implements ArticleCollectionService{

}




