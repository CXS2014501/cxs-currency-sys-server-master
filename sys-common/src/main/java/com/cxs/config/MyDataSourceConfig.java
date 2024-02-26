package com.cxs.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2022/11/15 10:35
 * @Description:
 **/
@Data
@Configuration
@ConfigurationProperties(prefix = "spring.datasource")
public class MyDataSourceConfig {
    private String driverClassName;
    private String url;
    private String username;
    private String password;
    private String database;
}
