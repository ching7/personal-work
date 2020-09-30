<template>
  <div class="app-container">
    <el-input v-model="seachCate"
              size="medium"
              placeholder="输入查找的类别，支持模糊匹配"
              style="margin-bottom:30px;"
              class='search-input-prd'>
      <el-button slot="append"
                 icon="el-icon-search"></el-button>
    </el-input>
    <div class="cate-nodes">
      <el-button type="primary"
                 size="small"
                 style="margin: 0px 5px 5px 5px;"
                 @click="addRootCate()">新增根分类</el-button>
      <el-tree ref="cateNodesTree"
               :data="cateNodes"
               :props="defaultProps"
               :filter-node-method="filterNode"
               :render-content='renderContent'
               :highlight-current='true'
               :expand-on-click-node='false'
               class="filter-tree"
               @node-click='selectCate'
               :default-expand-all='false' />
    </div>
    <div class="cate-prd">
      <div>
        <el-table v-loading="listLoading"
                  :data="prdGoodList"
                  element-loading-text="Loading"
                  border
                  fit
                  highlight-current-row
                  style="margin-top: 15px;">
          <el-table-column align="center"
                           label="产品编号"
                           width="95">
            <template slot-scope="scope">
              {{ scope.row.productId }}
            </template>
          </el-table-column>
          <el-table-column label="产品名称"
                           width="150"
                           align="center">
            <template slot-scope="scope">
              {{ scope.row.productName}}
            </template>
          </el-table-column>
          <el-table-column label="产品描述"
                           width="200">
            <template slot-scope="scope">
              <span>{{ scope.row.subTitle }}</span>
            </template>
          </el-table-column>
          <el-table-column label="单次购买上限"
                           width="110"
                           align="center">
            <template slot-scope="scope">
              {{ scope.row.limitNum }}
            </template>
          </el-table-column>
          <el-table-column class-name="status-col"
                           label="零售价"
                           width="110"
                           align="center">
            <template slot-scope="scope">
              {{ scope.row.salePrice }}
            </template>
          </el-table-column>
          <el-table-column align="center"
                           label="库存"
                           width="100">
            <template slot-scope="scope">
              <span>{{ scope.row.stock }}</span>
            </template>
          </el-table-column>
        </el-table>
      </div>
      <div>
        <el-pagination layout="total, sizes, prev, pager, next"
                       :total="totalCount"
                       @current-change="handleCurrentChange"
                       @size-change='changePageSize'
                       :page-size='pageSize'
                       background>
        </el-pagination>
      </div>
    </div>
    <el-dialog title="分类名称"
               :close-on-click-modal="false"
               :visible.sync="cateFormVisible">
      <el-input v-model="currCatename"
                placeholder="分类名称"></el-input>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="cateFormVisible = false">取消</el-button>
        <el-button type="primary"
                   @click="appendCateHandler()">确认</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { getCateAll, getCatePrd, appendCate, deleteCate } from '@/api/category'

export default {
  data () {
    return {
      seachCate: '',
      pageSize: 10,
      currPage: 1,
      category: {},
      totalCount: 0,
      cateNodes: [],
      currentNode: {},
      isAddRootCate: false,
      currCatename: "",
      cateFormVisible: false,
      listLoading: false,
      defaultProps: {
        children: 'children',
        label: 'label'
      },
      prdGoodList: []
    }
  },
  watch: {
    seachCate (val) {
      this.$refs.cateNodesTree.filter(val)
    }
  },
  created () {
    this.initCartNode()
    this.prdGoodList = []
  },
  methods: {
    handleCurrentChange (data) {
      this.ininPrdGoods(this.currentNode, data, this.pageSize)
    },
    changePageSize (data) {
      this.ininPrdGoods(this.currentNode, this.currPage, data)
    },
    ininPrdGoods (currentNode, currPage, pageSize) {
      if (currentNode.children.length == 0) {
        this.listLoading = true
        let getCatePrdParam = {
          'cateId': currentNode.id,
          'currPage': currPage,
          'pageSize': pageSize
        }
        getCatePrd(getCatePrdParam).then(response => {
          if (response.code === 20000 && response.data.length > 0) {
            this.prdGoodList = response.data
            this.totalCount = response.totalCount
          } else {
            this.prdGoodList = []
          }
        })
      }
      this.listLoading = false
    },
    selectCate (data) {
      this.currentNode = data
      this.ininPrdGoods(data, this.currPage, this.pageSize)
    },
    initCartNode () {
      getCateAll().then(response => {
        this.cateNodes = response.data
      })
    },
    filterNode (value, data) {
      if (!value) return true
      return data.label.indexOf(value) !== -1
    },
    renderContent (h, { node, data, store }) {
      return (
        <span class="custom-tree-node">
          <span>{node.label}</span>
          <span>
            <el-button size="mini" type="text" on-click={() => this.appendCateNode(data)}>新增</el-button>
            <el-button v-show={data.children && data.children.length === 0} size="mini" type="text" on-click={() => this.removeCateNode(node, data)}>删除</el-button>
          </span>
        </span >);
    },
    addRootCate () {
      this.cateFormVisible = true
      this.isAddRootCate = true
    },
    appendCateHandler () {
      let param = {}
      if (this.isAddRootCate) {
        param = {
          'parentId': '0',//-1为所有商品，总根节点
          'name': this.currCatename
        }
      } else {
        param = {
          'parentId': this.currentNode.id,
          'name': this.currCatename
        }
      }
      appendCate(param).then(resopnse => {
        this.initCartNode()
      })
      this.cateFormVisible = false
      this.isAddRootCate = false
    },
    appendCateNode (data) {
      this.cateFormVisible = true
      this.currentNode = data
    },
    removeCateNode (node, data) {
      let param = {
        'cateId': data.id
      }
      this.$confirm('此操作将永久删除该分类, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        deleteCate(param).then(resopnse => {
          this.initCartNode()
        })
        console.log('删除节点=', node, data)
        this.$message({
          type: 'success',
          message: '删除成功!'
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        })
      })
    }
  }
}
</script>
<style>
.search-input-prd {
  width: 50%;
  margin-left: 2%;
  display: table;
}
.cate-nodes {
  width: 30%;
  float: left;
  height: 500px;
  overflow: auto;
}
.cate-prd {
  width: 60%;
  float: left;
  padding-left: 10px;
}
</style>
