package com.cxs.vo.file;

import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class FileDownloadVO {

    private String fileId;

    private String file;

    private Long fileSize;

    private String fileName;

    private String filePostfix;
}
