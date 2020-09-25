package com.cyn.mall.devtemplate.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cyn.common.utils.PageUtils;
import com.cyn.common.utils.R;
import com.cyn.mall.devtemplate.bean.PrdCate;
import com.cyn.mall.devtemplate.bean.RTD;
import com.cyn.mall.devtemplate.ctrl.PrdCategoryCtrl;
import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;
import com.cyn.mall.devtemplate.entity.ProductEntity;
import com.cyn.mall.devtemplate.service.PrdCategoryService;
import com.cyn.mall.devtemplate.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

//import org.apache.shiro.authz.annotation.RequiresPermissions;


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
     * 查询所有子分类
     *
     * @return
     */
    @RequestMapping(value = "/admin/getAllPrdCate", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:cart:list")
    public RTD getAllPrdCate() {
        RTD rtd = new RTD();
        List<PrdCategoryEntity> list = prdCategoryService.list();
        rtd.setData(list);
        rtd.setCode(20000);
        rtd.setStatus("查询所有子分类");
        return rtd;
    }

    /**
     * 查询分类名称
     *
     * @param params
     * @return
     */
    @RequestMapping(value = "/admin/getPrdCateName", method = RequestMethod.POST)
    //@RequiresPermissions("devtemplate:cart:list")
    public RTD getPrdCateName(@RequestParam List<String> params) {
        RTD rtd = new RTD();
        List<String> cateNames = new ArrayList<>();
        if (params.size() > 0) {
            params.forEach(cateId -> {
                // 1 判断节点是否有子节点
                // 2 无子节点直接删除，有子节点报错返回
                QueryWrapper<PrdCategoryEntity> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq("cat_id", Integer.parseInt(cateId));
                List<PrdCategoryEntity> list = prdCategoryService.list(queryWrapper);
                if (list.size() > 0) {
                    cateNames.add(list.get(0).getName());
                }
            });
        }
        rtd.setData(cateNames);
        rtd.setCode(20000);
        rtd.setStatus("查询分类名称");
        return rtd;
    }

    /**
     * 删除节点
     */
    @RequestMapping(value = "/admin/deleteCate", method = RequestMethod.GET)
    //@RequiresPermissions("devtemplate:cart:list")
    public RTD deleteCate(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        String cateId = params.get("cateId").toString();
        // 1 判断节点是否有子节点
        // 2 无子节点直接删除，有子节点报错返回
        QueryWrapper<PrdCategoryEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("parent_id", Integer.parseInt(cateId));
        List<PrdCategoryEntity> list = prdCategoryService.list(queryWrapper);
        if (list.size() > 0) {
            rtd.setCode(50000);
            rtd.setStatus("当前节点有子节点，禁止删除");
            return rtd;
        } else {
            prdCategoryService.removeById(cateId);
            rtd.setCode(20000);
            rtd.setStatus("节点删除成功");
            return rtd;
        }
    }

    /**
     * 新增子分类
     */
    @RequestMapping(value = "/admin/appendCate", method = RequestMethod.POST)
    //@RequiresPermissions("devtemplate:cart:list")
    public RTD appendCate(@RequestParam Map<String, Object> params) {
        RTD rtd = new RTD();
        String parentId = params.get("parentId").toString();
        String name = params.get("name").toString();
        // 1 父节点isParent=1
        QueryWrapper<PrdCategoryEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("cat_id", parentId);
        PrdCategoryEntity prdCategoryEntity = new PrdCategoryEntity();
        PrdCategoryEntity parent = prdCategoryService.getById(parentId);
        if (parent != null) {
            prdCategoryEntity.setIsParent(1);
            boolean update = prdCategoryService.update(prdCategoryEntity, queryWrapper);
        }
        // 2 新增子节点
        PrdCategoryEntity newPrdCategoryEntity = new PrdCategoryEntity();
        if (parent == null) {
            newPrdCategoryEntity.setIsParent(1);
        } else {
            newPrdCategoryEntity.setIsParent(0);
        }
        newPrdCategoryEntity.setName(name);
        newPrdCategoryEntity.setParentId(Integer.parseInt(parentId));
        newPrdCategoryEntity.setStatus(1);
        newPrdCategoryEntity.setSortOrder(0);
        newPrdCategoryEntity.setCreated(new Date());
        newPrdCategoryEntity.setUpdated(new Date());
        boolean save = prdCategoryService.save(newPrdCategoryEntity);
        if (save) {
            rtd.setCode(20000);
            rtd.setStatus("新增子分类成功");
        }
        return rtd;
    }

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
