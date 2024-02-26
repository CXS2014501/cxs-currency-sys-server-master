package com.cxs.dto.admin.feedback;

import com.cxs.valid.annotation.ParamLengthValid;
import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:18
 * @Description:
 **/
@Data
public class HandleFeedBackDTO {
    /**
     * 反馈id
     */
    @NotNull(message = "feedbackId为必填项")
    private Integer feedbackId;

    @NotNull(message = "emailFlag为必填项")
    @ParamRangeValid(ranges = {"0", "1"}, message = "emailFlag只能传0,1")
    private Integer emailFlag;

    /**
     * 回复内容
     */
    @ParamLengthValid(max = 1000, message = "replyContent不可大于1000字符")
    private String replyContent;
}
