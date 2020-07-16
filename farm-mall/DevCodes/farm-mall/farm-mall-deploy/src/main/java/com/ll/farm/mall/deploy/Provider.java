package com.ll.farm.mall.deploy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 文件描述
 *
 * @ProjectName: farm-mall
 * @Package: com.ll.farm.mall
 * @Date 2020/7/16 19:34
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@SpringBootApplication(scanBasePackages = "com.ll.farm.mall.*")
public class Provider {
    public static void main(String[] args) {
        SpringApplication.run(Provider.class, args);
    }
}
