package com.cxs.vo.user;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:35
 * @Description:
 **/
@Data
public class UserFeedbackListVO {
    private Integer feedbackId;

    /**
     * 反馈类型
     */
    private String feedbackType;


    /**
     * 状态，1、已处理 0、未处理
     */
    private Integer feedbackStatus;

    /**
     * 反馈时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime feedbackTime;
}
