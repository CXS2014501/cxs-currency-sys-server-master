package com.cxs.dto.admin.question;

import com.cxs.base.BaseRequest;
import com.cxs.base.BaseResult;
import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class AdminGetQuestionListDTO extends BaseRequest {

    private String keyword;
}
