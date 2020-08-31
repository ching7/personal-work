<template>
  <el-table :data="list"
            style="width: 100%;padding-top: 15px;">
    <el-table-column label="订单号"
                     min-width="50">
      <template slot-scope="scope">
        {{ scope.row.orderId | orderNoFilter }}
      </template>
    </el-table-column>
    <el-table-column label="订单创建时间"
                     min-width="50">
      <template slot-scope="scope">
        {{ scope.row.createDate}}
      </template>
    </el-table-column>
    <el-table-column label="订单商品"
                     width="150"
                     align="center">
      <template slot-scope="scope">
        {{ showOrderGoods(JSON.parse(scope.row.goodsList)) }}
      </template>
    </el-table-column>
    <el-table-column label="订单总价"
                     width="100"
                     align="center">
      <template slot-scope="scope">
        ¥{{ scope.row.orderTotal | toThousandFilter }}
      </template>
    </el-table-column>
    <el-table-column label="订单状态"
                     width="200"
                     align="center">
      <template slot-scope="{row}">
        <el-tag :type="row.orderStatus">
          {{ row.orderStatus | statusFilter}}
        </el-tag>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
import { getOrderAll } from '@/api/order'

export default {
  filters: {
    statusFilter (status) {
      const statusMap = {
        '1': '已付款,待发货',
        '2': '已发货',
        '3': '已收货',
        '4': '已评价'
      }
      return statusMap[status]
    },
    orderNoFilter (str) {
      return str.toString().substring(0, 30)
    },
    toThousandFilter (num) {
      return (+num || 0).toString().replace(/^-?\d+/g, m => m.replace(/(?=(?!\b)(\d{3})+$)/g, ','))
    }
  },
  data () {
    return {
      list: null
    }
  },
  created () {
    this.fetchData()
  },
  methods: {
    fetchData () {
      getOrderAll().then(response => {
        this.list = response.data.items.slice(0, 8)
      })
    },
    showOrderGoods (order) {
      let goodsStr = '';
      order.forEach(goods => {
        goodsStr = goods.productName + "x" + goods.productNum + " "
      })
      return goodsStr
    }
  }
}
</script>
