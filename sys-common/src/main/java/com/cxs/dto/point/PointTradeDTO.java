package com.cxs.dto.point;

import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class PointTradeDTO {

    @NotNull(message = "类型id为必传项")
    private Integer id;
}
