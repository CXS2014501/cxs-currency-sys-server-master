package com.cxs.dto.admin.user;

import com.cxs.base.BaseRequest;
import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class GetUserListDTO extends BaseRequest {
    private String keyWord;
}
