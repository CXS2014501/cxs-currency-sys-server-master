package com.cxs.dto.admin.task;

import com.cxs.base.BaseRequest;
import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class GetTaskLogListReqDTO extends BaseRequest {

    @NotNull(message = "taskId不能为空")
    private Integer taskId;
    /**
     * 操作结果 1、成功 2、失败
     */
    private Boolean executeStatus;

    /**
     * 操作时间
     */
    private List<LocalDateTime> timeRange;

}
