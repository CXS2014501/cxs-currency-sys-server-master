package com.cxs.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@ConfigurationProperties(prefix = "aliyun.oss")
@Component
@Data
public class AliyunOssConfig {
    /**
     * 服务器地址
     */
    private String endpoint;
    /**
     * 子账户名称
     */
    private String accessKeyId;
    /**
     * 子账户密码
     */
    private String accessKeySecret;
    /**
     * 桶的名字
     */
    private String bucketName;
}
