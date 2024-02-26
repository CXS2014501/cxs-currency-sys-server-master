package com.cxs.vo.admin.recharge;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/2/21 10:00
 * @Description:
 **/
@Data
public class RechargeTypeListVO {

    private Integer id;
    /**
     * 金币数量
     */
    private Integer gold;
    /**
     * money
     */
    private BigDecimal money;

    /**
     * 折扣
     */
    private Double discount;

    /**
     * 是否展示
     */
    private Boolean shows;
    /**
     * 描述
     */
    private String typeDesc;
}
