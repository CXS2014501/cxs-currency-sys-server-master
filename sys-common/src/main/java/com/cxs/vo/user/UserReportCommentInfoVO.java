package com.cxs.vo.user;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:35
 * @Description:
 **/
@Data
public class UserReportCommentInfoVO {
    private Integer commentId;
    /**
     * 评论内容
     */
    private String commentContent;

    /**
     * 评论时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime commentTime;
}
