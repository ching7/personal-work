package com.cyn.mall.devtemplate.controller;

import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.cyn.mall.devtemplate.Bean.HomeFloor;
import com.cyn.mall.devtemplate.Bean.ProductHome;
import com.cyn.mall.devtemplate.Bean.RT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.service.ProductService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;


/**
 * @author chenyn
 * @email 775608598@qq.com
 * @date 2020-07-25 14:59:41
 */
@RestController
@RequestMapping("/api/goods")
public class ProductController {
    @Autowired
    private ProductService productService;


    /**
     * 首页商品
     *
     * @return
     */
    @RequestMapping(value = "/productHome", method = RequestMethod.GET)
    public RT getProductHome() {
        List<ProductEntity> productEntityList = productService.list();
        List<HomeFloor> homeFloors = new ArrayList<>();
        productEntityList.forEach(productEntity -> {
            HomeFloor homeFloor = new HomeFloor();
            homeFloor.setImage(productEntity.getProductImageBig());
            homeFloor.setImageMobile(productEntity.getProductImageSmall());
            homeFloor.setLink(productEntity.getProductImageBig());
            homeFloor.setTitle(productEntity.getSubTitle());
            homeFloor.setTabs(productEntityList);
            homeFloors.add(homeFloor);
        });
        RT rt = new RT();
        rt.setMsg("suc");
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("home_floors", homeFloors);
        resultMap.put("home_hot", productEntityList);
        rt.setResult(productEntityList);
        rt.setStatus("0");
        return rt;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:product:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = productService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{productId}")
    //@RequiresPermissions("devtemplate:product:info")
    public R info(@PathVariable("productId") Long productId) {
        ProductEntity product = productService.getById(productId);

        return R.ok().put("product", product);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("devtemplate:product:save")
    public R save(@RequestBody ProductEntity product) {
        productService.save(product);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("devtemplate:product:update")
    public R update(@RequestBody ProductEntity product) {
        productService.updateById(product);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("devtemplate:product:delete")
    public R delete(@RequestBody Long[] productIds) {
        productService.removeByIds(Arrays.asList(productIds));

        return R.ok();
    }

}
