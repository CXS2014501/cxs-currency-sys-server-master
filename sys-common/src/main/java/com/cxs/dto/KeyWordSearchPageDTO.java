package com.cxs.dto;

import com.cxs.base.BaseRequest;
import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 15:40
 * @Description:
 **/
@Data
public class KeyWordSearchPageDTO extends BaseRequest {
    private String keyWord;
}
