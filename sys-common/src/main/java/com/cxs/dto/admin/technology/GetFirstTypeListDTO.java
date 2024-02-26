package com.cxs.dto.admin.technology;

import lombok.Data;

import java.io.Serializable;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/16 15:36
 * @Description:
 **/
@Data
public class GetFirstTypeListDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    private String keyWord;
}
