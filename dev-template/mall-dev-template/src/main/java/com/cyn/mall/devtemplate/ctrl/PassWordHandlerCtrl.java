package com.cyn.mall.devtemplate.ctrl;

import org.apache.tomcat.util.codec.binary.Base64;
import org.junit.Test;
import org.springframework.stereotype.Component;
import org.springframework.util.DigestUtils;

import javax.crypto.Cipher;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;

import static com.google.common.base.Charsets.UTF_8;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.ctrl
 * @Date 2020/9/22 20:54
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Component
public class PassWordHandlerCtrl {

    public static final String RSA_ALGORITHM_NOPADDING = "RSA";

    /**
     * RSA解密
     *
     * @param str
     * @param privateKeyStr
     * @return
     * @throws Exception
     */
    public static String decrypt(String str, String privateKeyStr) throws Exception {
        KeyFactory keyFactory = KeyFactory.getInstance(RSA_ALGORITHM_NOPADDING);
        byte[] privateKeyArray = privateKeyStr.getBytes();
        byte[] dataArray = str.getBytes();
        PKCS8EncodedKeySpec pkcs8EncodedKeySpec = new PKCS8EncodedKeySpec(Base64.decodeBase64(privateKeyArray));
        PrivateKey privateKey = keyFactory.generatePrivate(pkcs8EncodedKeySpec);

        Cipher cipher = Cipher.getInstance(RSA_ALGORITHM_NOPADDING);
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        return new String(cipher.doFinal(Base64.decodeBase64(dataArray)), UTF_8);
    }

    /**
     * Md5加密
     *
     * @param pwd
     * @return
     * @throws Exception
     */
    public static String getPwdMd532(String pwd) throws Exception {
        return DigestUtils.md5DigestAsHex(pwd.getBytes());
    }
    @Test
    public void getMd5() throws Exception {
        String pwd = "123456";
        String pwdMd532 = getPwdMd532(pwd);
    }
}
