package com.cxs.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cxs.model.ArticleLike;
import com.cxs.service.ArticleLikeService;
import com.cxs.mapper.ArticleLikeMapper;
import org.springframework.stereotype.Service;

/**
* @author DELL
* @description 针对表【t_article_like(文章点赞表)】的数据库操作Service实现
* @createDate 2022-11-26 09:00:21
*/
@Service
public class ArticleLikeServiceImpl extends ServiceImpl<ArticleLikeMapper, ArticleLike>
    implements ArticleLikeService{

}




