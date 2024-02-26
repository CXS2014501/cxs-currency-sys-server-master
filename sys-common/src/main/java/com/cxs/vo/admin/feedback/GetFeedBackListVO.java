package com.cxs.vo.admin.feedback;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:12
 * @Description:
 **/
@Data
public class GetFeedBackListVO {

    private Integer feedbackId;

    /**
     * 反馈类型
     */
    private String feedbackType;

    /**
     * 反馈内容
     */
    private String feedbackContent;

    /**
     * 反馈图片
     */
    private List<String> feedbackImages;

    /**
     * 状态，1、已处理 0、未处理
     */
    private Integer feedbackStatus;

    /**
     * 反馈用户
     */
    private String feedbackUser;

    /**
     * 用户接收邮箱
     */
    private String feedbackEmail;

    /**
     * 反馈时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime feedbackTime;
}
