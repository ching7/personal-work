package com.cyn.mall.devtemplate.ctrl;

import com.cyn.mall.devtemplate.bean.PrdCate;
import com.cyn.mall.devtemplate.entity.PrdCategoryEntity;
import com.cyn.mall.devtemplate.service.PrdCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 文件描述
 *
 * @ProjectName: mall-dev-template
 * @Package: com.cyn.mall.devtemplate.ctrl
 * @Date 2020/9/1 14:06
 * @Author:
 * @Version: 1.0
 * @Description: note
 **/
@Component
public class PrdCategoryCtrl {
    private Integer parentNode = 1;

    /**
     * 处理商品分类节点
     *
     * @param prdCategoryEntities
     * @return
     */
    public List<PrdCate> getPrdCateNodeList(List<PrdCategoryEntity> prdCategoryEntities) {
        List<PrdCate> prdCateList = new ArrayList<>();
        prdCategoryEntities.forEach(prdCategoryEntity -> {
            if (prdCategoryEntity.getIsParent().equals(parentNode)) {
                PrdCate prdCate = new PrdCate();
                prdCate.setId(prdCategoryEntity.getCatId());
                prdCate.setLabel(prdCategoryEntity.getName());
                prdCate.setChildren(getPrdCateNode(prdCategoryEntity, prdCategoryEntities));
                prdCateList.add(prdCate);
            }
        });

        return prdCateList;
    }


    /**
     * 递归查询分类
     *
     * @param prdCategoryEntity
     * @return
     */
    private List<PrdCate> getPrdCateNode(PrdCategoryEntity prdCategoryEntity, List<PrdCategoryEntity> prdCategoryEntities) {
        List<PrdCate> prdCateList = new ArrayList<>();
        prdCategoryEntities.forEach(prdCategory -> {
            if (prdCategoryEntity.getCatId().equals(prdCategory.getParentId())) {
                PrdCate prdCate = new PrdCate();
                prdCate.setId(prdCategory.getCatId());
                prdCate.setLabel(prdCategory.getName());
                prdCate.setChildren(getPrdCateNode(prdCategory, prdCategoryEntities));
                prdCateList.add(prdCate);
            }
        });
        return prdCateList;
    }
}
