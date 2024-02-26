package com.cxs.vo.user;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/16 13:39
 * @Description:
 **/
@Data
public class UserArticlePublishListVO {
    private Integer articleId;

    /**
     * 文章标题
     */
    private String articleTitle;

    /**
     * 文章状态,0、未审核 1、已通过 2、未通过
     */
    private Integer articleStatus;

    /**
     * 文章评分
     */
    private Float articleRate;

    /**
     * 是否原创
     */
    private Integer articleIsSelf;

    /**
     * 文章创建时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createTime;

    private String articleDesc;
}
