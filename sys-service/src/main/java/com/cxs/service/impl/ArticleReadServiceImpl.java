package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.ArticleRead;
import com.cxs.service.ArticleReadService;
import com.cxs.mapper.ArticleReadMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_article_read(文章阅读表)】的数据库操作Service实现
* @createDate 2022-11-26 09:00:21
*/
@Service
public class ArticleReadServiceImpl extends ServiceImpl<ArticleReadMapper, ArticleRead>
    implements ArticleReadService{

}




