package com.cxs.dto.article;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class DownloadFileDTO {

    @NotNull(message = "articleId为必传项")
    private Integer articleId;

    @NotBlank(message = "fileId为必传项")
    private String fileId;
}
