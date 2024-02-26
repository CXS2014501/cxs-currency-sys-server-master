package com.cxs.vo.recharge;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/2/21 10:00
 * @Description:
 **/
@Data
public class RechargeTypeVO {

    private Integer id;
    /**
     * 金币数量
     */
    private Integer gold;
    /**
     * money
     */
    private String money;
    /**
     * 描述
     */
    private String typeDesc;
}
