<template>
  <div class="app-container">
    <el-table v-loading="listLoading" :data="list" element-loading-text="Loading" border fit highlight-current-row>
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
    </el-table>
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
      listLoading: true
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
        this.listLoading = false
      })
    }
  }
}
</script>
