package com.cxs.vo.admin;

import com.cxs.base.Token;
import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 12:09
 * @Description:
 **/
@Data
public class AdminLoginVO {
    private AdminUserVO userInfo;
    private Token tokenInfo;
}
