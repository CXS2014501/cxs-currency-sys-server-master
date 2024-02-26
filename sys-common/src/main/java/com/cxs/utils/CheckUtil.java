package com.cxs.utils;

import com.cxs.enums.CurrencyErrorEnum;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @Project: cxs-currency-sys-server
 * @Author: cxs2014501@163.com
 * @Create: 2023/1/18 17:07
 * @Description:
 **/
public class CheckUtil {

    /**
     * 验证邮箱
     * @param email
     * @return
     */
    public static Boolean checkEmail(String email){
        String emailPattern = "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
        Pattern emailR = Pattern.compile(emailPattern);
        Matcher emailM = emailR.matcher(email);
        if (!emailM.matches()) {
            return false;
        }
        return true;
    }

    /**
     * 验证手机号
     * @param phone
     * @return
     */
    public static Boolean checkPhone(String phone){
        String phonePattern = "0?(13|14|15|17|18|19)[0-9]{9}";
        Pattern phoneR = Pattern.compile(phonePattern);
        Matcher phoneM = phoneR.matcher(phone);
        if (!phoneM.matches()) {
            return false;
        }
        return true;
    }
}
