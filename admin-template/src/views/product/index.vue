<template>
  <div class="app-container">
    <el-button type="primary" @click="goodDetail({})" size="medium">新增商品</el-button>
    <el-input size="medium" v-model="searchVal" class="search-input" placeholder="输入要查找的商品名称，支持模糊查找" clearable>
      <el-button slot="append" icon="el-icon-search" @click="searchGood()"></el-button>
    </el-input>
    <el-table v-loading="listLoading" :data="goodList" element-loading-text="Loading" border fit highlight-current-row style="margin-top: 15px;">
      <el-table-column align="center" label="产品编号" width="95">
        <template slot-scope="scope">
          {{ scope.$index }}
        </template>
      </el-table-column>
      <el-table-column label="产品名称" width="150" align="center">
        <template slot-scope="scope">
          {{ scope.row.productName}}
        </template>
      </el-table-column>
      <el-table-column label="产品描述">
        <template slot-scope="scope">
          <span>{{ scope.row.subTitle }}</span>
        </template>
      </el-table-column>
      <el-table-column label="单次购买上限" width="110" align="center">
        <template slot-scope="scope">
          {{ scope.row.limitNum }}
        </template>
      </el-table-column>
      <el-table-column class-name="status-col" label="零售价" width="110" align="center">
        <template slot-scope="scope">
          {{ scope.row.salePrice }}
        </template>
      </el-table-column>
      <el-table-column align="center" label="库存" width="200">
        <template slot-scope="scope">
          <span>{{ scope.row.stock }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="100">
        <template slot-scope="scope">
          <el-button @click="goodDetail(scope.row)" type="text" size="small">编辑</el-button>
        </template>
      </el-table-column>
    </el-table>
    <!-- 查看详情 -->
    <el-dialog title="商品详情" :visible.sync="goodsDetailFormVisible">
      <el-form :model="detailGood">
        <el-form-item label="商品名称" :label-width="formLabelWidth">
          <el-input v-model="detailGood.productName" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品描述" :label-width="formLabelWidth">
          <el-input v-model="detailGood.subTitle" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="库存" :label-width="formLabelWidth">
          <el-input v-model="detailGood.stock" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="单次购买上限" :label-width="formLabelWidth">
          <el-input v-model="detailGood.limitNum" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="零售价" :label-width="formLabelWidth">
          <el-input v-model="detailGood.salePrice" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品大图" :label-width="formLabelWidth">
          <el-input v-model="detailGood.productImageBig" type="textarea" :rows="2" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品小图" :label-width="formLabelWidth">
          <el-input v-model="detailGood.productImageSmall" type="textarea" :rows="2" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="商品细节图" :label-width="formLabelWidth">
          <el-input v-model="detailGood.productMsg" type="textarea" :rows="4" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="goodsDetailFormVisible = false">取消</el-button>
        <el-button @click="updateGood()" type="primary">确认修改</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getGoodsPage, putUpdateGood, getSearchGoods } from '@/api/product'

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
      formLabelWidth: '120px',
      goodsDetailFormVisible: false,
      detailGood: {}
    }

  },
  created () {
    this.fetchData()
  },
  methods: {
    fetchData () {
      this.listLoading = true
      getGoodsPage().then(response => {
        this.goodList = response.data
        this.detailGood = this.goodList[0]
        this.listLoading = false
      })

    },
    goodDetail (good) {
      this.detailGood = good
      this.goodsDetailFormVisible = true
    },
    updateGood () {
      putUpdateGood(this.detailGood).then(response => {
        this.fetchData()
      })
      this.goodsDetailFormVisible = false
    },
    searchGood () {
      // this.listLoading = true
      alert(this.searchVal)
      getSearchGoods(this.searchVal).then(response => {
        this.goodList = response.data
        this.detailGood = this.goodList[0]
        this.listLoading = false
      })
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
