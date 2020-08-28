<template>
  <div class="app-container">
    <el-input size="medium"
              v-model="searchOrderVal"
              class="search-input"
              placeholder="输入要查找的订单编号，支持模糊查找"
              clearable>
      <el-button slot="append"
                 icon="el-icon-search"
                 @click="searchOrder()"></el-button>
    </el-input>
    <el-table v-loading="listLoading"
              :data="OrderList"
              element-loading-text="Loading"
              border
              fit
              highlight-current-row
              style="margin-top: 15px;">
      <el-table-column align="center"
                       label="订单编号"
                       width="95">
        <template slot-scope="scope">
          {{ scope.row.orderId }}
        </template>
      </el-table-column>
      <el-table-column label="订单创建时间"
                       width="150"
                       align="center">
        <template slot-scope="scope">
          {{ scope.row.createDate}}
        </template>
      </el-table-column>
      <el-table-column label="订单状态"
                       width="150"
                       align="center">
        <template slot-scope="scope">
          {{ scope.row.orderStatus}}
        </template>
      </el-table-column>
      <el-table-column label="订单总价">
        <template slot-scope="scope">
          <span>{{ scope.row.orderTotal }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right"
                       label="操作"
                       width="100">
        <template slot-scope="scope">
          <el-button @click="OrderDetail(scope.row)"
                     type="text"
                     size="small">查看</el-button>
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
    <el-dialog title="订单详情"
               :visible.sync="OrderDetailFormVisible">
      <el-form :model="detailOrder">
        <el-form-item label="订单编号"
                      :label-width="formLabelWidth">
          <el-input v-model="detailOrder.orderId"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="订单商品"
                      :label-width="formLabelWidth">
          <el-input v-model="detailOrder.goodsList"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="订单状态"
                      :label-width="formLabelWidth">
          <el-input v-model="detailOrder.orderStatus"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="订单总价"
                      :label-width="formLabelWidth">
          <el-input v-model="detailOrder.orderTotal"
                    autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="OrderDetailFormVisible = false">取消</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getOrderPage, getSearchOrder } from '@/api/order'

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
      OrderList: [],
      listLoading: true,
      searchOrderVal: '',
      formLabelWidth: '120px',
      OrderDetailFormVisible: false,
      detailOrder: {},
      pageSize: 10,
      currPage: 1,
      totalCount: 1000
    }
  },
  watch: {
    pageSize (val) {
      alert(val + '333')
    },
    currPage (val) {
      alert(val + '444')
    }
  },
  created () {
    this.fetchData()
  },
  methods: {
    fetchData () {
      this.listLoading = true
      debugger
      getOrderPage().then(response => {
        this.OrderList = response.data
        this.detailOrder = this.OrderList[0]
        this.listLoading = false
      })

    },
    OrderDetail (Order) {
      this.detailOrder = Order
      this.OrderDetailFormVisible = true
    },
    searchOrder () {
      // this.listLoading = true
      alert(this.searchOrderVal)
      getSearchOrder(this.searchOrderVal).then(response => {
        this.OrderList = response.data
        this.detailOrder = this.OrderList[0]
        this.listLoading = false
      })
    },
    handleCurrentChange (data) {
      this.currPage = data
      alert(data + '==111')
    },
    changePageSize (data) {
      this.pageSize = data

      alert(data + '==2222')
    }
  }
}
</script>

<style scoped>
.line {
  text-align: center;
}
.search-input {
  width: 50%;
  margin-left: 2%;
}
</style>
