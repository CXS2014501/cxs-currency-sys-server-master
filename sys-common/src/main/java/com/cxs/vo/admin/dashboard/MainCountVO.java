package com.cxs.vo.admin.dashboard;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class MainCountVO {
    private Integer userCount;
    private Integer publishCount;
    private Integer activeCount;
    private Integer orderCount;
}
