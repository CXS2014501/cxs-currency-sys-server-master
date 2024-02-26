package com.cxs.vo.user;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:35
 * @Description:
 **/
@Data
public class UserOrderListVO {
    private String orderTradeNo;

    /**
     * 下单用户
     */
    private String orderUser;

    /**
     * 积分充值类型id
     */
    private Integer pointTypeId;

    /**
     * 0、未付款, 1、已付款
     */
    private Integer orderStatus;

    /**
     * 订单描述
     */
    private String orderDesc;

    private BigDecimal orderMoney;
    /**
     * 交易时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime orderTime;
}
