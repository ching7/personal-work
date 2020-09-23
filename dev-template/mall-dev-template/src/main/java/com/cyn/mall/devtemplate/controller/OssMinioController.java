package com.cyn.mall.devtemplate.controller;

import com.cyn.mall.devtemplate.bean.RTD;
import io.minio.MinioClient;
import io.minio.policy.PolicyType;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.controller
 * @Date 2020/9/23 19:33
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Log4j2
@RestController
@RequestMapping("/oss/minio/")
public class OssMinioController {
    @Value("${minio.endpoint}")
    private String endpoint;
    @Value("${minio.bucketName}")
    private String bucketName;
    @Value("${minio.accessKey}")
    private String accessKey;
    @Value("${minio.secretKey}")
    private String secretKey;

    /**
     * 文件上传
     *
     * @param file
     * @return
     */
    @ApiOperation("文件上传")
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public RTD upload(@RequestParam("file") MultipartFile file) {
        RTD rtd = new RTD();
        try {
            MinioClient minioClient = new MinioClient(endpoint, accessKey, secretKey);
            //存入bucket不存在则创建，并设置为只读
            if (!minioClient.bucketExists(bucketName)) {
                minioClient.makeBucket(bucketName);
                minioClient.setBucketPolicy(bucketName, "*.*", PolicyType.READ_ONLY);
            } else {
                log.info("存储桶:{} 已存在", bucketName);
            }
            String filename = file.getOriginalFilename();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            // 文件存储的目录结构
            String objectName = sdf.format(new Date()) + "/" + filename;
            // 存储文件
            minioClient.putObject(bucketName, objectName, file.getInputStream(), file.getContentType());
            log.info("文件上传成功!");
            String filePath = endpoint + "/" + bucketName + "/" + objectName;
            rtd.setCode(20000);
            rtd.setData(filePath);
        } catch (Exception e) {
            rtd.setCode(50000);
            rtd.setMessage(e.getMessage());
            log.error("上传发生错误: {}！", e.getMessage());
        }
        return rtd;
    }


    /**
     * 文件删除
     *
     * @param filePath
     * @return
     */
    @ApiOperation("文件删除")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public RTD delete(@RequestParam("filePath") String filePath) {
        RTD rtd = new RTD();
        try {
            MinioClient minioClient = new MinioClient(endpoint, accessKey, secretKey);
            minioClient.removeObject(bucketName, filePath);
            rtd.setCode(20000);
            rtd.setData("文件删除成功");
        } catch (Exception e) {
            rtd.setCode(50000);
            rtd.setMessage(e.getMessage());
            log.error("上传发生错误: {}！", e.getMessage());
            return rtd;
        }
        return rtd;
    }

    /**
     * 文件下载
     *
     * @param filePath
     * @return
     */
    @ApiOperation("文件下载")
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void downloadFiles(@RequestParam("filePath") String filePath, HttpServletResponse httpResponse) {
        try {
            MinioClient minioClient = new MinioClient(endpoint, accessKey, secretKey);
            InputStream object = minioClient.getObject(bucketName, filePath);
            byte buf[] = new byte[1024];
            int length = 0;
            httpResponse.reset();
            httpResponse.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(filePath, "UTF-8"));
            httpResponse.setContentType("application/octet-stream");
            httpResponse.setCharacterEncoding("utf-8");
            OutputStream outputStream = httpResponse.getOutputStream();
            while ((length = object.read(buf)) > 0) {
                outputStream.write(buf, 0, length);
            }
            outputStream.close();
        } catch (Exception ex) {
            log.error(ex.getMessage(), "下载失败：");
        }
    }
}
