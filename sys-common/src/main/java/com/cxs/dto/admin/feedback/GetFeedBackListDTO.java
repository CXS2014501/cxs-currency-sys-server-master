package com.cxs.dto.admin.feedback;

import com.cxs.base.BaseRequest;
import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:06
 * @Description:
 **/
@Data
public class GetFeedBackListDTO extends BaseRequest {

    @ParamRangeValid(ranges = {"1", "0"}, message = "feedbackStatus范围不允许")
    private Integer feedbackStatus;

    public static void main(String[] args) {
        System.out.println( 0x00000001 );
    }
}
