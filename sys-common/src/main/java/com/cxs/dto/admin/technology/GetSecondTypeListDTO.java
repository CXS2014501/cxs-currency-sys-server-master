package com.cxs.dto.admin.technology;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/16 15:46
 * @Description:
 **/
@Data
public class GetSecondTypeListDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @NotNull(message = "一级navId为必传项")
    private Integer navId;

    private String keyWord;
}
