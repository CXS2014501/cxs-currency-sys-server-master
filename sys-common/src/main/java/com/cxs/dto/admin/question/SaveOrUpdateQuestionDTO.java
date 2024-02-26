package com.cxs.dto.admin.question;

import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/2/1 15:20
 * @Description:
 **/
@Data
public class SaveOrUpdateQuestionDTO {

    private Integer id;

    /**
     * 问题
     */
    @NotBlank(message = "question为必传项")
    private String question;

    /**
     * 答案
     */
    @NotBlank(message = "questionAnswer为必传项")
    private String questionAnswer;

    /**
     * 是否展示
     */
    @NotNull(message = "isShow为必传项")
    private Boolean isShow;
}
