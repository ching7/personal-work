package com.cyn.common.utils;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.common.utils
 * @Date 2020/7/29 18:43
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
public class DateUtils {

    /**
     * 获取当前的时间-yyyyMMdd
     *
     * @return
     */
    public static String getCurrDate() {
        SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyyMMdd");
        Calendar calendar1 = Calendar.getInstance();
        calendar1.add(Calendar.DATE, 0);
        return yyyyMMdd.format(calendar1.getTime());
    }

    /**
     * 获取当前时刻-HHmmss
     *
     * @return
     */
    public static String getCurrTime() {
        SimpleDateFormat hHmmss = new SimpleDateFormat("HHmmss");
        Calendar calendar1 = Calendar.getInstance();
        calendar1.add(Calendar.DATE, 0);
        return hHmmss.format(calendar1.getTime());
    }

    /**
     * 获取指定天数之前的日期-yyyyMMdd
     *
     * @return
     */
    public static String getBeforeDate(int beforeDay) {
        SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyyMMdd");
        Calendar calendar1 = Calendar.getInstance();
        calendar1.add(Calendar.DATE, -beforeDay);
        return yyyyMMdd.format(calendar1.getTime());
    }

    public static void main(String[] args) {
        System.out.println(getCurrDate());
        System.out.println(getCurrTime());
        System.out.println(getBeforeDate(7));
    }
}
