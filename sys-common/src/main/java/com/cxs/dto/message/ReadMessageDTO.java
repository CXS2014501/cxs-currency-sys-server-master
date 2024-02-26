package com.cxs.dto.message;

import lombok.Data;

import java.util.List;
import java.util.Set;

/*
 * @Project:cxs-currency-sys-server
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Data
public class ReadMessageDTO {

    private Set<Integer> messageIdList;
}
