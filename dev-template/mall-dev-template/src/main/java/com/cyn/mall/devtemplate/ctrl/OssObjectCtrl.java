package com.cyn.mall.devtemplate.ctrl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cyn.common.utils.DateUtils;
import com.cyn.mall.devtemplate.entity.OssObjectEntity;
import com.cyn.mall.devtemplate.service.OssObjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.ctrl
 * @Date 2020/9/24 17:01
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Controller
public class OssObjectCtrl {
    @Value("${server.port}")
    private int port;

    @Autowired
    OssObjectService ossObjectService;

    private String fileAllPathViewPrefix = "/oss/minio/view?filePath=";

    /**
     * 新增文件存储记录
     *
     * @param filePath
     * @param file
     * @param filename
     * @return
     */
    public String addOssObject(String filePath, MultipartFile file, String filename) {
        OssObjectEntity ossObjectEntity = new OssObjectEntity();
        ossObjectEntity.setFilePath(filePath);
        ossObjectEntity.setCreateDate(DateUtils.getCurrDate());
        ossObjectEntity.setCreateTime(DateUtils.getCurrTime());
        ossObjectEntity.setFileName(filename);
        ossObjectEntity.setFileMd5(getFileMd5(file));
        ossObjectEntity.setFileSize(Double.parseDouble(Long.toString(file.getSize())));
        String fileAllPath = "";
        try {
            String host = InetAddress.getLocalHost().getHostAddress();
            fileAllPath = "http://" + host + ":" + port + fileAllPathViewPrefix + filePath;
            ossObjectEntity.setFileAllPath(fileAllPath);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        ossObjectService.save(ossObjectEntity);
        return fileAllPath;
    }


    /**
     * 判断文件是否存在
     * 存在返回文件路径
     * 不存在返回空
     *
     * @param file
     * @return
     */
    public String existObject(MultipartFile file) {
        String fileMd5 = getFileMd5(file);
        QueryWrapper<OssObjectEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("file_md5", fileMd5);
        List<OssObjectEntity> list = ossObjectService.list(queryWrapper);
        if (list.size() > 0) {
            return list.get(0).getFileAllPath();
        } else {
            return "";
        }
    }

    /**
     * 获取文件MD5
     *
     * @param file
     * @return
     */
    public String getFileMd5(MultipartFile file) {
        try {
            return DigestUtils.md5DigestAsHex(file.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }
}
