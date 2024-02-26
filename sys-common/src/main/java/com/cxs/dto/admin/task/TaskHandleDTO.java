package com.cxs.dto.admin.task;

import com.cxs.valid.annotation.ParamRangeValid;
import lombok.Data;

import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class TaskHandleDTO {
    @NotNull(message = "taskId为必传项")
    private Integer taskId;

    /**
     * 1、启动 2、重启 3、停止
     */
    @NotNull(message = "operaType为必传项")
    @ParamRangeValid(ranges = {"1","2","3"})
    private Integer operaType;
}
