<template>
  <div class="app-container">
    <el-button type="primary"
               size="small"
               @click="goodDetail({})">新增商品</el-button>
    <el-input v-model="searchVal"
              size="medium"
              class="search-input"
              placeholder="输入要查找的商品名称，支持模糊查找"
              clearable>
      <el-button slot="append"
                 icon="el-icon-search"
                 @click="searchGood()" />
    </el-input>
    <el-table v-loading="listLoading"
              row-key="productId"
              :data="goodList"
              element-loading-text="Loading"
              border
              fit
              highlight-current-row
              style="margin-top: 15px;">
      <el-table-column align="center"
                       label="产品编号"
                       width="50">
        <template slot-scope="scope">{{ scope.row.productId }}</template>
      </el-table-column>
      <el-table-column label="产品名称"
                       width="100"
                       align="center">
        <template slot-scope="scope">{{ scope.row.productName }}</template>
      </el-table-column>
      <el-table-column label="产品描述"
                       width="100">
        <template slot-scope="scope">
          <span>{{ scope.row.subTitle }}</span>
        </template>
      </el-table-column>
      <el-table-column label="产品大图"
                       width="150">
        <template slot-scope="scope">
          <product-img :imgUrls='scope.row.productImageBig'>
          </product-img>
          <!-- {{ scope.row.productImageBig }} -->
        </template>
      </el-table-column>
      <el-table-column label="产品小图"
                       width="150">
        <template slot-scope="scope">
          <product-img :imgUrls='scope.row.productImageSmall'>
          </product-img>
        </template>
      </el-table-column>
      <el-table-column label="产品细节图"
                       width="150">
        <template slot-scope="scope">
          <product-img :imgUrls='scope.row.productMsg'>
          </product-img>
        </template>
      </el-table-column>
      <el-table-column label="产品分类"
                       width="150">
        <template slot-scope="scope">

          <span>{{ getCateName(scope.row.cateId) }}</span>
        </template>
      </el-table-column>
      <el-table-column label="单次购买上限"
                       width="50"
                       align="center">
        <template slot-scope="scope">{{ scope.row.limitNum }}</template>
      </el-table-column>
      <el-table-column class-name="status-col"
                       label="零售价"
                       width="50"
                       align="center">
        <template slot-scope="scope">{{ scope.row.salePrice }}</template>
      </el-table-column>
      <el-table-column align="center"
                       label="库存"
                       width="50">
        <template slot-scope="scope">
          <span>{{ scope.row.stock }}</span>
        </template>
      </el-table-column>
      <el-table-column align="center"
                       label="更新日期"
                       width="100">
        <template slot-scope="scope">
          <span>{{ scope.row.createDate }}</span>
        </template>
      </el-table-column>
      <el-table-column align="center"
                       label="更新时间"
                       width="100">
        <template slot-scope="scope">
          <span>{{ scope.row.createTime }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right"
                       label="操作"
                       width="100">
        <template slot-scope="scope">
          <el-button type="text"
                     size="small"
                     @click="goodDetail(scope.row)">编辑</el-button>
          <el-button type="text"
                     size="small"
                     @click="delGood(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination layout="total, sizes, prev, pager, next"
                     :total="totalCount"
                     :page-size="pageSize"
                     background
                     @current-change="handleCurrentChange"
                     @size-change="changePageSize" />
    </div>
    <!-- 查看详情 -->
    <el-dialog title="商品详情"
               :visible.sync="goodsDetailFormVisible">
      <el-form ref="goodDetails"
               :model="detailGood"
               :rules="rules">
        <el-form-item label="商品名称"
                      :label-width="formLabelWidth"
                      prop="productName">
          <el-input v-model="detailGood.productName"
                    autocomplete="off" />
        </el-form-item>
        <el-form-item label="商品描述"
                      :label-width="formLabelWidth"
                      prop="subTitle">
          <el-input v-model="detailGood.subTitle"
                    autocomplete="off" />
        </el-form-item>
        <el-form-item label="库存"
                      :label-width="formLabelWidth"
                      prop="stock">
          <el-input v-model.number="detailGood.stock"
                    autocomplete="off" />
        </el-form-item>
        <el-form-item label="所属分类"
                      :label-width="formLabelWidth">
          <el-cascader ref="cascader"
                       filterable
                       v-model="detailGood.cateId"
                       :options="categorys"
                       size="medium"
                       placeholder='请选择分类'
                       clearable />
        </el-form-item>
        <el-form-item label="单次购买上限"
                      :label-width="formLabelWidth"
                      prop="limitNum">
          <el-input v-model.number="detailGood.limitNum"
                    autocomplete="off" />
        </el-form-item>
        <el-form-item label="零售价"
                      :label-width="formLabelWidth"
                      prop="salePrice">
          <el-input v-model.number="detailGood.salePrice"
                    autocomplete="off" />
        </el-form-item>
        <el-form-item label="商品大图"
                      :label-width="formLabelWidth"
                      prop="productImageBig">
          <el-input v-model="detailGood.productImageBig"
                    :disabled="true"
                    :rows="2"
                    autocomplete="off">
          </el-input>
          <product-img :imgUrls='detailGood.productImageBig' />
          <el-upload class="upload-demo"
                     ref="imageBigUpload"
                     :action="fileUploadUrl"
                     multiple
                     :with-credentials="true"
                     :auto-upload="false"
                     :limit="3"
                     :on-exceed="handleExceed"
                     :file-list="fileImageBigList">
            <el-button size="small"
                       slot="trigger"
                       type="primary">点击上传替换图片</el-button>
            <el-button style="margin-left: 10px;"
                       size="small"
                       type="success"
                       @click="submitImageBigUpload">上传到服务器</el-button>
            <div slot="tip"
                 class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
          </el-upload>
        </el-form-item>
        <el-form-item label="商品小图"
                      :label-width="formLabelWidth"
                      prop="productImageSmall">
          <el-input v-model="detailGood.productImageSmall"
                    :disabled="true"
                    autocomplete="off">

          </el-input>
          <product-img :imgUrls='detailGood.productImageSmall' />
        </el-form-item>
        <el-form-item label="商品细节图"
                      :label-width="formLabelWidth"
                      prop="productMsg">
          <el-input v-model="detailGood.productMsg"
                    :disabled="true"
                    autocomplete="off">
          </el-input>
          <product-img :imgUrls='detailGood.productMsg' />
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="goodsDetailFormVisible = false">取消</el-button>
        <el-button type="primary"
                   @click="updateGood()">确认</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getGoodsPage, putUpdateGood, getSearchGoods, putDelGood } from '@/api/product'
import { getCateAll, getAllPrdCate } from '@/api/category'
import { FILE_UPLOAD_URL, viewFiles } from '@/api/file'

import productImg from './productImg'

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
  components: {
    productImg
  },
  data () {
    return {
      fileImageBigList: [],
      fileUploadUrl: '',
      goodList: [],
      listLoading: true,
      searchVal: '',
      // 未归类分类
      allcategorys: [],
      // 归类下拉分类
      categorys: [],
      currgory: [],
      formLabelWidth: '120px',
      goodsDetailFormVisible: false,
      detailGood: {},
      options: [{
        value: 'zhinan',
        label: '指南',
        children: [{
          value: 'shejiyuanze',
          label: '设计原则',
          children: [{
            value: 'yizhi',
            label: '一致'
          }, {
            value: 'fankui',
            label: '反馈'
          }, {
            value: 'xiaolv',
            label: '效率'
          }, {
            value: 'kekong',
            label: '可控'
          }]
        }, {
          value: 'daohang',
          label: '导航',
          children: [{
            value: 'cexiangdaohang',
            label: '侧向导航'
          }, {
            value: 'dingbudaohang',
            label: '顶部导航'
          }]
        }]
      }],
      pageSize: 10,
      currPage: 1,
      totalCount: 0,
      rules: {
        productName: [
          { required: true, message: '请输入商品名称', trigger: 'change' }
        ],
        limitNum: [
          { type: 'number', required: true, message: '请输入商品单词购买上限', trigger: 'change' }
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
      // alert(val + '333')
    },
    currPage (val) {
      // alert(val + '444')
    },
    currgory (newVal, oldVal) {
      console.log("newVal==", newVal)
    }
  },
  created () {
    this.fileUploadUrl = FILE_UPLOAD_URL
    this.fetchData(this.currPage, this.pageSize)
  },
  methods: {
    submitImageBigUpload () {
      this.$refs.imageBigUpload.submit()
    },
    handleExceed (files, fileList) {
      this.$message.warning(`当前限制选择 3 个文件，本次选择了 ${files.length} 个文件，共选择了 ${files.length + fileList.length} 个文件`);
    },
    fetchData (pageNum, pageSize) {
      this.goodList = []
      const queryPageParam = {
        'currPage': pageNum,
        'pageSize': pageSize,
        'productName': this.searchVal.trim()
      }
      this.listLoading = true
      getGoodsPage(queryPageParam).then(response => {
        if (response.data.length > 0) {
          this.goodList = response.data
          debugger
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
      // fix https://github.com/ElemeFE/element/issues/18669
      this.$nextTick(() => {
        this.detailGood = good
        if (this.$refs.cascader) {
          this.$refs.cascader.$refs.panel.activePath = []
          this.$refs.cascader.$refs.panel.calculateCheckedNodePaths()
        }
        if (good.cateId) {
          this.detailGood.cateId = typeof (good.cateId) === 'object' ? good.cateId : JSON.parse(good.cateId)
          // this.$refs.cascader.$refs.panel.checkedValue = this.detailGood.cateId
          // this.$refs.cascader.$refs.panel.activePath = this.detailGood.cateId
          // this.$refs.cascader.$refs.panel.syncActivePath()
        } else {
          this.detailGood.cateId = []
        }
      })
      this.goodsDetailFormVisible = true
    },
    initCartNodes () {
      getCateAll().then(response => {
        this.categorys = this.initCatrgorys(response.data)
      })
      getAllPrdCate().then(response => {
        debugger
        this.allcategorys = response.data
      })
    },
    initCatrgorys (nodes) {
      const tempgory = []
      nodes.forEach(node => {
        const temp = {}
        temp['value'] = node.id
        temp['label'] = node.label
        if (node.children.length > 0) {
          temp['children'] = this.initCatrgorys(node.children)
        }
        tempgory.push(temp)
        // console.log(' this.tempgory==', tempgory)
      })
      return tempgory
    },
    delGood (good) {
      debugger
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
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        })
      })
    },
    updateGood () {
      this.$refs['goodDetails'].validate((valid) => {
        if (valid) {
          // 获取分类
          console.log('this.detailGood=', this.detailGood.cateId.toString())
          this.detailGood.cateId = typeof (this.detailGood.cateId) === 'object' ? JSON.stringify(this.detailGood.cateId) : this.detailGood.cateId
          putUpdateGood(this.detailGood).then(response => {
            this.fetchData(this.currPage, this.pageSize)
          })
          this.goodsDetailFormVisible = false
        } else {
          console.log('error submit!!')
          return false
        }
      })
    },
    searchGood () {
      if (this.searchVal.trim().length === 0) {
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
    },
    getCateName (node) {
      let names = ""
      if (typeof (node) === "string") {
        JSON.parse(node).forEach(cat => {
          this.allcategorys.forEach(cate => {
            if (cat === cate.catId) {
              names = names + "/" + cate.name
            }
          })
        })
      }
      return names

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
