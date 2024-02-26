package com.cxs.dto.admin;

import lombok.Data;

import java.io.Serializable;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/15 16:17
 * @Description:
 **/
@Data
public class GetTableListDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private String keyword;
}
