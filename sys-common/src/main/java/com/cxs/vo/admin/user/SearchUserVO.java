package com.cxs.vo.admin.user;

import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/17 9:55
 * @Description:
 **/
@Data
public class SearchUserVO {

    /**
     * 用户id
     */
    private String userId;

    /**
     * 展示名
     */
    private String nickName;
}
