package com.cxs.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Component
@ConfigurationProperties(prefix = "spring.mail")
@Data
public class MailConfig {
    private String host;
    private String username;
    private String password;
    private String phone;
    private String title;
}
