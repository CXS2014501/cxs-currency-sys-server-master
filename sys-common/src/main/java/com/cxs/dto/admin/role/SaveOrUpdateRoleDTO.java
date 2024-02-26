package com.cxs.dto.admin.role;

import com.cxs.vo.admin.menu.AdminMenuVO;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/17 15:02
 * @Description:
 **/
@Data
public class SaveOrUpdateRoleDTO {

    private Integer roleId;

    @NotBlank(message = "角色名为必传项")
    private String roleName;

    private String roleDesc;

    @NotNull(message = "routes为必传项")
    private List<AdminMenuVO> routes;
}
