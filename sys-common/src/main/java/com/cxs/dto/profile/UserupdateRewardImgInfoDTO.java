package com.cxs.dto.profile;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class UserupdateRewardImgInfoDTO {
    /**
     * 微信收款码
     */
    private String weixinImg;

    /**
     * 微信边框颜色
     */
    private String weixinBorderColor;

    /**
     * 支付宝收款码
     */
    private String zhifubaoImg;

    /**
     * 支付宝边框颜色
     */
    private String zhifubaoBorderColor;
}
