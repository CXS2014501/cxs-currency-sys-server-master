package com.cxs.vo.admin.file;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/5/30 15:50
 * @Description:
 **/
@Data
public class AdminFileVO {
    private String fileId;

    /**
     * 源文件名
     */
    private String fileOrignName;

    /**
     * 文件真实路径
     */
    private String fileRealPath;

    /**
     * 文件访问路径
     */
    private String fileAccessUrl;

    /**
     * 文件大小
     */
    private Long fileSize;

    /**
     * 文件结构
     */
    private String fileStructure;

    /**
     * 创建时间
     */
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createDate;
}
