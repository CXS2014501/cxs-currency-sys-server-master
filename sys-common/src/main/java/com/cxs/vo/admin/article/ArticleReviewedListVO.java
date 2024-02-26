package com.cxs.vo.admin.article;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/16 14:32
 * @Description:
 **/
@Data
public class ArticleReviewedListVO {

    private Integer articleId;

    /**
     * 文章标题
     */
    private String articleTitle;

    private Integer articleStatus;

    /**
     * 分类名
     */
    private String typeName;

    /**
     * 原创
     */
    private Integer articleIsSelf;

    private Boolean downLoadFlag;

    /**
     * 文章创建时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createTime;
}
