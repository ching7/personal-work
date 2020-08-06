<template>
  <el-table :data="list" style="width: 100%;padding-top: 15px;">
    <el-table-column label="订单号" min-width="200">
      <template slot-scope="scope">
        {{ scope.row.orderId | orderNoFilter }}
      </template>
    </el-table-column>
    <el-table-column label="订单总价" width="195" align="center">
      <template slot-scope="scope">
        ¥{{ scope.row.orderTotal | toThousandFilter }}
      </template>
    </el-table-column>
    <el-table-column label="订单状态" width="100" align="center">
      <template slot-scope="{row}">
        <el-tag :type="row.orderStatus | statusFilter">
          {{ row.orderStatus }}
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
        '1': 'danger',
        '2': 'success'
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
      debugger
      getOrderAll().then(response => {
        this.list = response.data.items.slice(0, 8)
      })
    }
  }
}
</script>
