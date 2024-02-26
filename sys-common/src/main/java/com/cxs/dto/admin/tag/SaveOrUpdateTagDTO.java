package com.cxs.dto.admin.tag;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class SaveOrUpdateTagDTO {
    private Integer tagId;

    @NotBlank(message = "tagName为必传项")
    private String tagName;
}
