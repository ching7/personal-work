package com.cyn.mall.devtemplate.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cyn.common.utils.DateUtils;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;
import com.cyn.mall.devtemplate.bean.AdminIndexMsg;
import com.cyn.mall.devtemplate.bean.HomeFloor;
import com.cyn.mall.devtemplate.bean.RT;
import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.ctrl.UserCtrl;
import com.cyn.mall.devtemplate.entity.CartEntity;
import com.cyn.mall.devtemplate.entity.OrderEntity;
import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.service.CartService;
import com.cyn.mall.devtemplate.service.OrderService;
import com.cyn.mall.devtemplate.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.*;

import static com.cyn.mall.devtemplate.constants.Constants.pageSize;
import static com.cyn.mall.devtemplate.constants.Constants.userIdStr;

//import org.apache.shiro.authz.annotation.RequiresPermissions;


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

    @Autowired
    private OrderService orderService;

    /**
     * 管理员商品搜索
     *
     * @return
     */
    @RequestMapping(value = "/admin/getSearchGoods", method = RequestMethod.POST, name = "管理员商品搜索")
    public RTD getSearchGoods(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        String prdName = params.get("productName").toString();
        if (!prdName.trim().isEmpty()) {
            QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.like("product_name", prdName);
            List<ProductEntity> list = productService.list(queryWrapper);
            rtd.setStatus("suc");
            rtd.setCode(20000);
            rtd.setData(list);
        }
        return rtd;
    }

    /**
     * 删除商品
     *
     * @return
     */
    @RequestMapping(value = "/admin/putDelGood", method = RequestMethod.POST, name = "删除商品")
    public RTD putDelGood(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        Integer prdId = Integer.parseInt(params.get("productId").toString());
        ProductEntity productServiceById = productService.getById(prdId);
        if (productServiceById != null) {
            QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("product_id", prdId);
            productService.remove(queryWrapper);
        }
        rtd.setStatus("suc");
        rtd.setCode(20000);
        return rtd;
    }

    /**
     * 商品管理，修改商品详情，不存在新增
     *
     * @return
     */
    @RequestMapping(value = "/admin/putUpdateGood", method = RequestMethod.POST, name = "商品管理")
    public RTD putUpdateGood(@RequestParam Map<String, Object> params) {
        BigDecimal salePrice = new BigDecimal((params.get("salePrice")).toString());
        String productName = params.get("productName").toString();
        String productImageSmall = params.get("productImageSmall").toString();
        String productImageBig = params.get("productImageBig").toString();
        String productMsg = params.get("productMsg").toString();
        Integer stock = Integer.parseInt(params.get("stock").toString());
        String cateId = params.get("cateId").toString();
        String subTitle = params.get("subTitle").toString();
        Integer limitNum = Integer.parseInt(params.get("limitNum").toString());
        ProductEntity productEntity = new ProductEntity();
        productEntity.setLimitNum(limitNum);
        productEntity.setSubTitle(subTitle);
        productEntity.setStock(stock);
        productEntity.setProductMsg(productMsg);
        productEntity.setProductImageBig(productImageBig);
        productEntity.setProductImageSmall(productImageSmall);
        productEntity.setProductName(productName);
        productEntity.setSalePrice(salePrice);
        productEntity.setCateId(cateId);
        productEntity.setCreateDate(DateUtils.getCurrDate());
        productEntity.setCreateTime(DateUtils.getCurrTime());
        RTD rtd = new RTD();
        if (params.get("productId") == null || params.get("productId").toString().equals("0")) {
            productService.save(productEntity);
            rtd.setStatus("suc");
            rtd.setCode(20000);
            return rtd;
        }
        Integer prdId = Integer.parseInt(params.get("productId").toString());
        ProductEntity productServiceById = productService.getById(prdId);
        if (productServiceById != null) {
            QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("product_id", prdId);
            productService.update(productEntity, queryWrapper);
        }
        rtd.setStatus("suc");
        rtd.setCode(20000);
        return rtd;
    }


    /**
     * 管理员首页统计
     *
     * @return
     */
    @RequestMapping(value = "/admin/getAdminIndexMsg", method = RequestMethod.GET, name = "管理员首页统计")
    public RTD getAdminIndexMsg(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        AdminIndexMsg adminIndexMsg = new AdminIndexMsg();
        //本周订单总数
        QueryWrapper<OrderEntity> tWrapper = new QueryWrapper<>();
        String endDate = DateUtils.getCurrDate() + DateUtils.getCurrTime();
        // 7天前
        String startDate = DateUtils.getBeforeDate(360) + DateUtils.getCurrTime();
        tWrapper.ge("create_date", startDate);
        tWrapper.le("create_date", endDate);
        List<OrderEntity> orderList = orderService.list(tWrapper);
        adminIndexMsg.setWeekNewOrder(orderList.size());

        //本周销售额
        final int[] weekIncome = {0};
        orderList.forEach(orderEntity -> {
            weekIncome[0] = weekIncome[0] + orderEntity.getOrderTotal().intValue();
        });
        adminIndexMsg.setWeekIncome(weekIncome[0]);

        //订单总数
        int allOrders = orderService.count();
        adminIndexMsg.setAllOrders(allOrders);

        //所有商品数
        int goods = productService.count();
        adminIndexMsg.setAllGoods(goods);


        rtd.setStatus("suc");
        rtd.setCode(20000);
        rtd.setData(adminIndexMsg);
        return rtd;
    }

    /**
     * 管理员商品分页查询
     *
     * @return
     */
    @RequestMapping(value = "/admin/getGoodsPage", method = RequestMethod.GET, name = "管理员商品分页查询")
    public RTD getGoodsPage(@RequestParam Map<String, Object> params) {
        String currPage = params.get("currPage").toString();
        String pageSize = params.get("pageSize").toString();
        String productName = params.get("productName").toString();

        RTD rtd = new RTD();
        QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("product_name", productName);
        queryWrapper.orderByDesc("product_id");
        IPage<ProductEntity> iPage = new Page<ProductEntity>(Long.parseLong(currPage), Long.parseLong(pageSize));
        IPage<ProductEntity> productEntityIPage = productService.page(iPage, queryWrapper);

        List<ProductEntity> list = productEntityIPage.getRecords();
        rtd.setStatus("suc");
        rtd.setCode(20000);
        rtd.setData(list);
        rtd.setTotalCount(productEntityIPage.getTotal());
        return rtd;
    }


    /**
     * 商品详情
     *
     * @return
     */
    @RequestMapping(value = "/productDet", method = RequestMethod.GET, name = "商品详情")
    public RT getProductDet(@RequestParam Map<String, Object> params) {
        RT rt = new RT();
        Integer productId = Integer.parseInt((String) params.get("productId"));
        ProductEntity productEntity = productService.getById(productId);
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
    public RT putCart(@RequestBody Map<String, Object> params, HttpServletRequest httpRequest) {
        RT rt = new RT();
        Integer inputPrdId = (Integer) params.get("productId");
        Integer inputPrdNum = (Integer) params.get("productNum") == null ? 1 : (Integer) params.get("productNum");
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
                    ProductEntity productEntity = productService.getById(inputPrdId);
                    CartEntity cartEntity = new CartEntity();
                    cartEntity.setProductNum(inputPrdNum);
                    cartEntity.setProductId(inputPrdId);
                    cartEntity.setProductImg(productEntity.getProductImageBig());
                    cartEntity.setProductName(productEntity.getProductName());
                    cartEntity.setProductPrice(productEntity.getSalePrice());
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
                ProductEntity productEntity = productService.getById(inputPrdId);
                cartEntityAdd.setUserId(userIdforReqCookies.intValue());
                cartEntityAdd.setProductId(inputPrdId);
                cartEntityAdd.setProductNum(inputPrdNum);
                cartEntityAdd.setProductImg(productEntity.getProductImageBig());
                cartEntityAdd.setProductName(productEntity.getProductName());
                cartEntityAdd.setProductPrice(productEntity.getSalePrice());
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
    @RequestMapping(value = "/computer", method = RequestMethod.GET)
    public RT getPageProduct(@RequestParam Map<String, Object> params) {
        Integer page = Integer.parseInt((String) params.get("page"));
        String sort = (String) params.get("sort");
        String priceGt = (String) params.get("priceGt");
        String priceLte = (String) params.get("priceLte");
        String descStr = "-1";
        String ascStr = "1";

        //sort 1 升序 -1 降序
        //priceGt大于
        //priceLte小于
        RT rt = new RT();
        QueryWrapper<ProductEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.ge("sale_price", priceGt);
        queryWrapper.le("sale_price", priceLte);
        if (ascStr.equals(sort)) {
            queryWrapper.orderByAsc("sale_price");
        } else if (descStr.equals(sort)) {
            queryWrapper.orderByDesc("sale_price");
        }
        IPage<ProductEntity> iPage = new Page<ProductEntity>(page.longValue(), Long.parseLong(pageSize));
        IPage<ProductEntity> productEntityIPage = productService.page(iPage, queryWrapper);

        rt.setMsg("suc");
        rt.setStatus("0");
        Map<String, Object> pageRes = new HashMap<>();

        pageRes.put("data", productEntityIPage.getRecords());
        pageRes.put("count", productEntityIPage.getRecords().size());

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
        // fixme 首页热门商品计算，分类商品展示
        List<ProductEntity> productEntityList = productService.list();
        List<HomeFloor> homeFloors = new ArrayList<>();
        productEntityList = productEntityList.subList(0, 5);
        List<ProductEntity> finalProductEntityList = productEntityList;
        productEntityList.forEach((productEntity) -> {
            HomeFloor homeFloor = new HomeFloor();
            homeFloor.setImage(productEntity.getProductImageBig());
            homeFloor.setImageMobile(productEntity.getProductImageSmall());
            homeFloor.setLink(productEntity.getProductImageBig());
            homeFloor.setTitle(productEntity.getSubTitle());
            homeFloor.setTabs(finalProductEntityList.subList(0, 1));
            homeFloors.add(homeFloor);
        });
        RT rt = new RT();
        rt.setMsg("suc");
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("home_floors", homeFloors);
        resultMap.put("home_hot", productEntityList);
        rt.setResult(resultMap);
        rt.setStatus("0");
        return rt;
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("devtemplate:product:list")
    public R list(@RequestBody Map<String, Object> params) {
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
