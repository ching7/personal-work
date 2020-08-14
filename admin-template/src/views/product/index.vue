<template>
  <div class="app-container">
    <el-input placeholder="输入要查找的商品名称，支持模糊查找" v-model="searchVal" clearable>
      <el-button slot="append" icon="el-icon-search"></el-button>
    </el-input>
    <el-table v-loading="listLoading" :data="list" element-loading-text="Loading" border fit highlight-current-row style="margin-top: 15px;">
      <el-table-column align="center" label="产品编号" width="95">
        <template slot-scope="scope">
          {{ scope.$index }}
        </template>
      </el-table-column>
      <el-table-column label="产品名称" width="150" align="center">
        <template slot-scope="scope">
          {{ scope.row.productName }}
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
          <el-tag :type="scope.row.salePrice">{{ scope.row.salePrice }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="库存" width="200">
        <template slot-scope="scope">
          <span>{{ scope.row.stock }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="100">
        <template slot-scope="scope">
          <el-button @click="goodDetail(scope.row)" type="text" size="small">查看</el-button>
          <el-button type="text" size="small">编辑</el-button>
        </template>
      </el-table-column>
    </el-table>
    <!-- 查看详情 -->
    <el-dialog title="商品详情" :visible.sync="goodsDetailFormVisible">
      <el-form :model="detailGood">
        <el-form-item label="活动名称" :label-width="formLabelWidth">
          <el-input v-model="detailGood.productName" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="goodsDetailFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="goodsDetailFormVisible = false">确 定</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getGoodsPage } from '@/api/product'

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
      list: null,
      listLoading: true,
      searchVal: '',
      formLabelWidth: '120px',
      goodsDetailFormVisible: false,
      detailGood: null
    }
  },
  created () {
    this.fetchData()
  },
  methods: {
    fetchData () {
      this.listLoading = true
      getGoodsPage().then(response => {
        this.list = response.data
        debugger
        this.detailGood = this.list[0]
        this.listLoading = false
      })

    },
    goodDetail (good) {
      this.detailGood = good
      this.goodsDetailFormVisible = true
    }
  }
}
</script>
