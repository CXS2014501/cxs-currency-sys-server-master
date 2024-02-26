package com.cxs.vo.article;

import com.alibaba.fastjson.JSONArray;
import lombok.Data;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class FileVO {
    private String fileId;
    private String fileName;
    private Long fileSize;
    private JSONArray fileStructure;
}
