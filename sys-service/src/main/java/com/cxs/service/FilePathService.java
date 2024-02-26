package com.cxs.service;

import com.cxs.base.BaseResult;
import com.cxs.model.FilePath;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author DELL
* @description 针对表【t_file_path(文件资源表)】的数据库操作Service
* @createDate 2022-11-26 17:03:57
*/
public interface FilePathService extends IService<FilePath> {
    void removeFileByFileId(String fileId, BaseResult result);
}
