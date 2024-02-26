package com.cxs.dto.external;

import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class ApproveExternalFriendLinkDTO {

    @NotNull(message = "externalLinkId为必传项")
    private Integer externalLinkId;

    private String externalLinkDesc;

    @NotNull(message = "externalLinkStatus为必传项")
    @ParamRangeValid(ranges = {"1", "2"}, message = "参数错误, 1、通过 2、拒绝")
    private Integer externalLinkStatus;
}
