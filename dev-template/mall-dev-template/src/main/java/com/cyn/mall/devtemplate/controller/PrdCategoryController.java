package com.cyn.mall.devtemplate.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cyn.mall.devtemplate.bean.PrdCate;
import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.ctrl.PrdCategoryCtrl;
import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;
import com.cyn.mall.devtemplate.service.PrdCategoryService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;


/**
 * 商品分类表
 *
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-09-01 10:27:01
 */
@RestController
@RequestMapping("/api/prdCate")
public class PrdCategoryController {
    @Autowired
    private PrdCategoryService prdCategoryService;

    @Autowired
    private PrdCategoryCtrl prdCategoryCtrl;

    @Autowired
    private ProductService productService;

    /**
     * 查询指定分类对应产品
     */
    @RequestMapping(value = "/admin/getCatePrd", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:prdcategory:list")
    public RTD getCatePrd(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        String currPage = params.get("currPage").toString();
        String pageSize = params.get("pageSize").toString();
        Integer cateId = Integer.parseInt(params.get("cateId").toString());
        QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("cate_id", cateId);
        IPage<ProductEntity> iPage = new Page<ProductEntity>(Long.parseLong(currPage), Long.parseLong(pageSize));
        IPage<ProductEntity> productEntityIPage = productService.page(iPage, queryWrapper);
        rtd.setData(productEntityIPage.getRecords());
        rtd.setTotalCount(productEntityIPage.getTotal());
        rtd.setCode(20000);
        return rtd;
    }


    /**
     * 查询全部商品分类
     */
    @RequestMapping(value = "/admin/getCateAll", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:prdcategory:list")
    public RTD getCateAll(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        List<PrdCategoryEntity> list = prdCategoryService.list();
        List<PrdCate> prdCateNodeList = prdCategoryCtrl.getPrdCateNodeList(list);
        rtd.setData(prdCateNodeList);
        rtd.setCode(20000);
        return rtd;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:prdcategory:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = prdCategoryService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{catId}")
    //@RequiresPermissions("devtemplate:prdcategory:info")
    public R info(@PathVariable("catId") Integer catId) {
        PrdCategoryEntity prdCategory = prdCategoryService.getById(catId);

        return R.ok().put("prdCategory", prdCategory);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:prdcategory:save")
    public R save(@RequestBody PrdCategoryEntity prdCategory) {
        prdCategoryService.save(prdCategory);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:prdcategory:update")
    public R update(@RequestBody PrdCategoryEntity prdCategory) {
        prdCategoryService.updateById(prdCategory);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:prdcategory:delete")
    public R delete(@RequestBody Integer[] catIds) {
        prdCategoryService.removeByIds(Arrays.asList(catIds));

        return R.ok();
    }

}
