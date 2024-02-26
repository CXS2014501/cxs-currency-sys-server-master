package com.cxs.dto.article.comment;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/2/2 15:53
 * @Description:
 **/
@Data
public class LikeCommentDTO {
    @NotNull(message = "commentId为必传项")
    private Integer commentId;
}
