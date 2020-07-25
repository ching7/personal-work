package com.cyn.mall.devtemplate.controller;

import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cyn.common.utils.Constant;
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

    //每页商品数
    private static String pageSize = "20";

    /**
     * 全部商品
     * 分页\价格排序
     */
    @RequestMapping(value = "/computer/{page}/{sort}/{priceGt}/{priceLte}", method = RequestMethod.GET)
    public RT getPageProduct(@PathVariable("page") String page,
                             @PathVariable("sort") int sort,
                             @PathVariable("priceGt") int priceGt,
                             @PathVariable("priceLte") int priceLte) {
        //sort 1 升序 -1 降序
        //priceGt大于
        //priceLte小于
        RT rt = new RT();
        Map<String, Object> queryPageParams = new HashMap<>();
        queryPageParams.put(Constant.PAGE, page);
        queryPageParams.put(Constant.LIMIT, pageSize);
        queryPageParams.put(Constant.ORDER_FIELD, "product_price");
        if (sort == 1) {
            queryPageParams.put(Constant.ORDER, "asc");
        } else if (sort == -1) {
            queryPageParams.put(Constant.ORDER, "desc");
        }

        QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.ge("sale_price", priceGt);
        queryWrapper.le("sale_price", priceLte);
        PageUtils queryPage = productService.queryPage(queryPageParams, queryWrapper);
        rt.setMsg("suc");
        rt.setStatus("0");
        Map<String, Object> pageRes = new HashMap<>();
        pageRes.put("count", queryPage.getTotalCount());
        pageRes.put("data", queryPage.getList());
        rt.setResult(pageRes);
        return rt;

    }

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
