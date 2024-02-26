package com.cxs.vo.technology;

import lombok.Data;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/16 15:39
 * @Description:
 **/
@Data
public class TechnologyTypeItemVO {
    /**
     * 分类id
     */
    private Integer id;

    /**
     * 分类名
     */
    private String typeName;

    /**
     * 分类链接
     */
    private String typeRoute;

    /**
     * 图标
     */
    private String typeIcon;
}
