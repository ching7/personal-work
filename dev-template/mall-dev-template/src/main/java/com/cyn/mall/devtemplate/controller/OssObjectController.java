package com.cyn.mall.devtemplate.controller;

import java.util.Arrays;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cyn.mall.devtemplate.entity.OssObjectEntity;
import com.cyn.mall.devtemplate.service.OssObjectService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;



/**
 * 对象存储信息表
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-24 16:50:44
 */
@RestController
@RequestMapping("devtemplate/ossobject")
public class OssObjectController {
    @Autowired
    private OssObjectService ossObjectService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:ossobject:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = ossObjectService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{fileId}")
    //@RequiresPermissions("devtemplate:ossobject:info")
    public R info(@PathVariable("fileId") Integer fileId){
		OssObjectEntity ossObject = ossObjectService.getById(fileId);

        return R.ok().put("ossObject", ossObject);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:ossobject:save")
    public R save(@RequestBody OssObjectEntity ossObject){
		ossObjectService.save(ossObject);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:ossobject:update")
    public R update(@RequestBody OssObjectEntity ossObject){
		ossObjectService.updateById(ossObject);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:ossobject:delete")
    public R delete(@RequestBody Integer[] fileIds){
		ossObjectService.removeByIds(Arrays.asList(fileIds));

        return R.ok();
    }

}
