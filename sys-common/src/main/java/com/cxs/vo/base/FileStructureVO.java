package com.cxs.vo.base;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class FileStructureVO {

    private String name;

    private Long size;

    private Boolean disabled = true;

    private List<FileStructureVO> children = new ArrayList<>();
}
