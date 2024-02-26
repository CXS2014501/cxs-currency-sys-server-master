package com.cxs.mapper;

import com.cxs.bo.ArticleHotSearchBo;
import com.cxs.model.ArticleSearchFlow;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* @author DELL
* @description 针对表【t_article_search_flow(文章搜索次数记录表)】的数据库操作Mapper
* @createDate 2022-12-02 11:34:33
* @Entity com.cxs.model.ArticleSearchFlow
*/
public interface ArticleSearchFlowMapper extends BaseMapper<ArticleSearchFlow> {
    /**
     * 获取搜索次数最多的num条
     * @param num
     * @return
     */
    List<ArticleHotSearchBo> selectSearchCountList(@Param("num") Integer num);
}




