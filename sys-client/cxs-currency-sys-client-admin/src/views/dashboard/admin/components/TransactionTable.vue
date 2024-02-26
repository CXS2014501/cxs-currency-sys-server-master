<template>
  <el-table :data="list" style="width: 100%;padding-top: 15px;">
    <el-table-column label="订单号" min-width="200">
      <template slot-scope="scope">
        {{ scope.row.orderTradeNo }}
      </template>
    </el-table-column>
    <el-table-column label="交易金额" width="195" align="center">
      <template slot-scope="scope">
        ¥{{ scope.row.orderMoney }}
      </template>
    </el-table-column>
    <el-table-column label="交易状态" width="100" align="center">
      <template slot-scope="{row}">
        <el-tag
          v-if="row.orderStatus === 1"
          type="success"
          size="mini"
          style="margin-left: 5px;"
        >
          交易成功
        </el-tag>
        <el-tag
          v-else-if="row.orderStatus === 0"
          type="info"
          style="margin-left: 5px;"
          size="mini"
        >
          待付款
        </el-tag>
        <el-tag
          v-else
          type="danger"
          style="margin-left: 5px;"
          size="mini"
        >
          交易超时
        </el-tag>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
import { getPointTradeOrderList } from '@/api/point'

export default {
  filters: {
    statusFilter(status) {
      const statusMap = {
        0: '待付款',
        1: '交易成功',
        2: '交易超时'
      }
      return statusMap[status]
    },
    orderNoFilter(str) {
      return str.substring(0, 30) + '...'
    }
  },
  data() {
    return {
      list: []
    }
  },
  created() {
    this.fetchData()
  },
  methods: {
    fetchData() {
      const listQuery = {
          pageNum: 1,
          pageSize: 10
      }
      getPointTradeOrderList(listQuery).then(response => {
        this.list = response.data.data
      })
    }
  }
}
</script>
