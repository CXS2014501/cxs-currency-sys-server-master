package com.cxs.dto.admin.question;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class AdminQuestionListVO {
    private Integer id;

    /**
     * 问题
     */
    private String question;

    /**
     * 答案
     */
    private String questionAnswer;

    /**
     * 是否展示
     */
    private Boolean isShow;

    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createTime;
}
