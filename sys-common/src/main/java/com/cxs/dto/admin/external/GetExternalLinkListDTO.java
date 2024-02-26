package com.cxs.dto.admin.external;

import com.cxs.base.BaseRequest;
import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class GetExternalLinkListDTO extends BaseRequest {

    @NotNull(message = "状态为必传项")
    @ParamRangeValid(ranges = {"0", "1", "2"}, message = "范围错误,仅允许{0,1,2}")
    private Integer type;
}
