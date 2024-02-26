package com.cxs.vo.message;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class SysMessageVO {

    private Integer id;

    /**
     * 通知内容
     */
    private String messageContent;

    /**
     * 通知创建时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createTime;

    /**
     * 已读标记
     */
    private Boolean isRead;
}
