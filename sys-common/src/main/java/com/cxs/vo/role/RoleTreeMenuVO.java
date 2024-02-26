package com.cxs.vo.role;

import com.cxs.vo.admin.menu.AdminMenuVO;
import lombok.Data;

import java.util.List;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class RoleTreeMenuVO extends RoleVO{
    private List<AdminMenuVO> routes;
}
