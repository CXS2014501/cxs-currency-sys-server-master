package com.cxs.dto.admin.report;

import com.cxs.base.BaseRequest;
import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 15:06
 * @Description:
 **/
@Data
public class AdminGetReportListDTO extends BaseRequest {

    @ParamRangeValid(ranges = {"1", "0"}, message = "reportStatus范围不允许")
    private Integer reportStatus;
}
