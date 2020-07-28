package com.cyn.mall.devtemplate.controller;

import java.math.BigDecimal;
import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.cyn.common.utils.Constant;
import com.cyn.mall.devtemplate.Bean.HomeFloor;
import com.cyn.mall.devtemplate.Bean.RT;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import com.cyn.mall.devtemplate.entity.CartEntity;
import com.cyn.mall.devtemplate.entity.UserEntity;
import com.cyn.mall.devtemplate.service.CartService;
import com.cyn.mall.devtemplate.service.OrderService;
import com.cyn.mall.devtemplate.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.service.ProductService;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import static com.cyn.mall.devtemplate.constants.Constants.userIdStr;
import static com.cyn.mall.devtemplate.constants.Constants.pageSize;


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

    @Autowired
    private CartService cartService;

    @Autowired
    private UserCtrl userCtrl;


    /**
     * 商品详情
     *
     * @return
     */
    @RequestMapping(value = "/productDet", method = RequestMethod.POST, name = "商品详情")
    public RT getProductDet(@RequestParam Map<String, Object> params, HttpServletRequest httpRequest) {
        RT rt = new RT();
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpRequest);
        Integer inputPrdId = Integer.parseInt((String) params.get("productId"));
        ProductEntity productEntity = productService.getById(inputPrdId);
        rt.setMsg("suc");
        rt.setStatus("0");
        rt.setResult(productEntity);
        return rt;
    }

    /**
     * 新增购物车商品
     *
     * @return
     */
    @RequestMapping(value = "/addCartBatch", method = RequestMethod.POST, name = "批量新增购物车商品")
    public RT putCartBatch() {
        RT rt = new RT();
        return rt;
    }

    /**
     * 新增购物车商品
     *
     * @return
     */
    @RequestMapping(value = "/addCart", method = RequestMethod.POST, name = "新增购物车商品")
    public RT putCart(@RequestParam Map<String, Object> params, HttpServletRequest httpRequest) {
        RT rt = new RT();
        Integer inputPrdId = Integer.parseInt((String) params.get("productId"));
        Integer inputPrdNum = Integer.parseInt((String) params.get("productNum"));
        BigDecimal inputPrdPrice = BigDecimal.valueOf(Long.parseLong((String) params.get("productPrice")));
        String inputPrdName = (String) params.get("productName");
        String inputPrdImg = (String) params.get("productImg");
        Long userIdforReqCookies = userCtrl.getUserIdforReqCookies(httpRequest);
        if (userIdforReqCookies != null) {
            //查询当前用户购物车
            QueryWrapper<CartEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq(userIdStr, userIdforReqCookies);
            List<CartEntity> list = cartService.list(queryWrapper);
            // 存在用户购物车
            if (list.size() > 0) {
                //有相同商品加数量
                try {
                    list.forEach(cartEntity -> {
                        if (cartEntity.getProductId().equals(inputPrdId)) {
                            CartEntity cartEntitymod = new CartEntity();
                            cartEntitymod.setProductNum(cartEntity.getProductNum() + inputPrdNum);
                            UpdateWrapper<CartEntity> cartUpdateWrapper = new UpdateWrapper<>();
                            cartUpdateWrapper.eq("product_id", inputPrdId).eq("user_id", userIdforReqCookies);
                            cartService.update(cartEntitymod, cartUpdateWrapper);
                        }
                    });
                } catch (Exception e) {
                    rt.setStatus("1");
                    rt.setMsg("异常" + e.getMessage());
                    rt.setResult("");
                    return rt;
                }
                // 无相同商品直接新增
                QueryWrapper<CartEntity> queryWrapperExist = new QueryWrapper<>();
                queryWrapperExist.eq(userIdStr, userIdforReqCookies).eq("product_id", inputPrdId);
                List<CartEntity> listExCart = cartService.list(queryWrapperExist);
                if (listExCart.size() == 0) {
                    CartEntity cartEntity = new CartEntity();
                    cartEntity.setProductNum(inputPrdNum);
                    cartEntity.setProductId(inputPrdId);
                    cartEntity.setProductImg(inputPrdImg);
                    cartEntity.setProductName(inputPrdName);
                    cartEntity.setProductPrice(inputPrdPrice);
                    cartEntity.setUserId(userIdforReqCookies.intValue());
                    cartEntity.setChecked("0");
                    cartService.save(cartEntity);
                }
                rt.setStatus("0");
                rt.setMsg("添加成功");
                rt.setResult("");
                return rt;
            } else {
                CartEntity cartEntityAdd = new CartEntity();
                cartEntityAdd.setUserId(userIdforReqCookies.intValue());
                cartEntityAdd.setProductId(inputPrdId);
                cartEntityAdd.setProductNum(inputPrdNum);
                cartEntityAdd.setProductPrice(inputPrdPrice);
                cartEntityAdd.setProductName(inputPrdName);
                cartEntityAdd.setProductImg(inputPrdImg);
                cartEntityAdd.setChecked("0");
                boolean save = cartService.save(cartEntityAdd);
                if (save) {
                    rt.setStatus("0");
                    rt.setMsg("添加成功");
                    rt.setResult("");
                    return rt;
                }
            }
        } else {
            rt.setMsg("未登录");
            rt.setStatus("1");
        }
        return rt;
    }

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
        QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.ge("sale_price", priceGt);
        queryWrapper.le("sale_price", priceLte);
        if (sort == 1) {
            queryWrapper.orderByAsc("sale_price");
        } else if (sort == -1) {
            queryWrapper.orderByDesc("sale_price");
        }
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
