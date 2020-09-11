<template>
  <div class="app-container">
    <el-button type="primary"
               @click="goodDetail({})"
               size="medium">新增商品</el-button>
    <el-input size="medium"
              v-model="searchVal"
              class="search-input"
              placeholder="输入要查找的商品名称，支持模糊查找"
              clearable>
      <el-button slot="append"
                 icon="el-icon-search"
                 @click="searchGood()"></el-button>
    </el-input>
    <el-table v-loading="listLoading"
              :data="goodList"
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
      <el-table-column label="产品描述">
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
                       width="200">
        <template slot-scope="scope">
          <span>{{ scope.row.stock }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right"
                       label="操作"
                       width="100">
        <template slot-scope="scope">
          <el-button @click="goodDetail(scope.row)"
                     type="text"
                     size="small">编辑</el-button>
          <el-button @click="delGood(scope.row)"
                     type="text"
                     size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination layout="total, sizes, prev, pager, next"
                     :total="totalCount"
                     @current-change="handleCurrentChange"
                     @size-change='changePageSize'
                     :page-size='pageSize'
                     background>
      </el-pagination>
    </div>
    <!-- 查看详情 -->
    <el-dialog title="商品详情"
               :visible.sync="goodsDetailFormVisible">
      <el-form :model="detailGood"
               :rules="rules"
               ref='goodDetails'>
        <el-form-item label="商品名称"
                      :label-width="formLabelWidth"
                      prop="productName">
          <el-input v-model="detailGood.productName"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品描述"
                      :label-width="formLabelWidth"
                      prop="subTitle">
          <el-input v-model="detailGood.subTitle"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="库存"
                      :label-width="formLabelWidth"
                      prop="stock">
          <el-input v-model.number="detailGood.stock"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="所属分类"
                      :label-width="formLabelWidth"
                      prop="stock">
          <el-cascader v-model="value"
                       :options="categorys"
                       @change="handleChange"></el-cascader>
        </el-form-item>
        <el-form-item label="单次购买上限"
                      :label-width="formLabelWidth"
                      prop="limitNum">
          <el-input v-model.number="detailGood.limitNum"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="零售价"
                      :label-width="formLabelWidth"
                      prop="salePrice">
          <el-input v-model.number="detailGood.salePrice"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品大图"
                      :label-width="formLabelWidth"
                      prop="productImageBig">
          <el-input v-model="detailGood.productImageBig"
                    type="textarea"
                    :rows="2"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品小图"
                      :label-width="formLabelWidth"
                      prop="productImageSmall">
          <el-input v-model="detailGood.productImageSmall"
                    type="textarea"
                    :rows="2"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品细节图"
                      :label-width="formLabelWidth"
                      prop="productMsg">
          <el-input v-model="detailGood.productMsg"
                    type="textarea"
                    :rows="4"
                    autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="goodsDetailFormVisible = false">取消</el-button>
        <el-button @click="updateGood()"
                   type="primary">确认</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getGoodsPage, putUpdateGood, getSearchGoods, putDelGood } from '@/api/product'
import { getCateAll } from '@/api/category'

export default {
  filters: {
    statusFilter (status) {
      const statusMap = {
        published: 'success',
        draft: 'gray',
        deleted: 'danger'
      }
      return statusMap[status]
    }
  },
  data () {
    return {
      goodList: [],
      listLoading: true,
      searchVal: '',
      // 下拉分类
      categorys: [],
      // 产品原始分类
      cateNodes: [],
      formLabelWidth: '120px',
      goodsDetailFormVisible: false,
      detailGood: {},
      pageSize: 10,
      currPage: 1,
      totalCount: 0,
      rules: {
        productName: [
          { required: true, message: '请输入商品名称', trigger: 'change' },
        ],
        limitNum: [
          { type: 'number', required: true, message: '请输入商品单词购买上限', trigger: 'change' },
        ],
        subTitle: [
          { required: true, message: '请输入商品描述', trigger: 'change' }
        ],
        stock: [
          { type: 'number', required: true, message: '请输入商品库存', trigger: 'change' }
        ],
        salePrice: [
          { type: 'number', required: true, message: '请输入商品售价', trigger: 'change' }
        ],
        productImageBig: [
          { required: true, message: '请输入商品大图地址', trigger: 'change' }
        ],
        productImageSmall: [
          { required: true, message: '请输入商品小图地址', trigger: 'change' }
        ],
        productMsg: [
          { required: true, message: '请输入商品细节图地址', trigger: 'change' }
        ]
      }
    }
  },
  // computed: {
  //   pageSize (val) {
  //     alert(val + '333')
  //   },
  //   currPage (val) {
  //     alert(val + '444')
  //   }
  // },
  watch: {
    pageSize (val) {
      //alert(val + '333')
    },
    currPage (val) {
      //alert(val + '444')
    }
  },
  created () {
    this.fetchData(this.currPage, this.pageSize)
  },
  methods: {
    fetchData (pageNum, pageSize) {
      let queryPageParam = {
        'currPage': pageNum,
        'pageSize': pageSize,
        'productName': this.searchVal.trim()
      }
      this.listLoading = true
      getGoodsPage(queryPageParam).then(response => {
        if (response.data.length > 0) {
          this.goodList = response.data
          this.detailGood = this.goodList[0]
          this.totalCount = response.totalCount
          this.listLoading = false
        } else {
          this.goodList = []
          this.detailGood = {}
          this.totalCount = response.totalCount
          this.listLoading = false
        }
      })
      this.initCartNodes()
    },
    goodDetail (good) {
      this.detailGood = good
      this.goodsDetailFormVisible = true
    },
    initCartNodes () {
      debugger
      getCateAll().then(response => {
        this.categorys = response.data
      })
      debugger
    },
    delGood (good) {
      this.$confirm('此操作将永久删除该商品, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        putDelGood(good).then(response => {
          this.fetchData(this.currPage, this.pageSize)
        })
        this.$message({
          type: 'success',
          message: '删除成功!'
        });
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        });
      });

    },
    updateGood () {
      this.$refs['goodDetails'].validate((valid) => {
        if (valid) {
          putUpdateGood(this.detailGood).then(response => {
            this.fetchData(this.currPage, this.pageSize)
          })
          this.goodsDetailFormVisible = false
        } else {
          console.log('error submit!!');
          return false;
        }
      });
    },
    searchGood () {
      if (this.searchVal.trim().length == 0) {
        this.fetchData(this.currPage, this.pageSize)
        return false
      }
      this.fetchData(this.currPage, this.pageSize)

    },
    handleCurrentChange (data) {
      this.fetchData(data, this.pageSize)
    },
    changePageSize (data) {
      this.fetchData(this.currPage, data)
    }
  }
}
</script>
<style scoped>
.search-input {
  width: 50%;
  margin-left: 2%;
}
</style>
