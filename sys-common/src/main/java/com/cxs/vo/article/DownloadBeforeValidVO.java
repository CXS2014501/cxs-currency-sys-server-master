package com.cxs.vo.article;

import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/3/20 11:11
 * @Description:
 **/
@Data
public class DownloadBeforeValidVO {
    private Boolean flag = false;
    private String downToken;
}
