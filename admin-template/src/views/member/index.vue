<template>
  <div class="app-container">
    <el-input size="medium"
              v-model="searchMemberVal"
              class="search-input"
              placeholder="输入要查找的用户名称，支持模糊查找"
              clearable>
      <el-button slot="append"
                 icon="el-icon-search"
                 @click="searchMember()"></el-button>
    </el-input>
    <el-table v-loading="listLoading"
              :data="memberList"
              element-loading-text="Loading"
              border
              fit
              highlight-current-row
              style="margin-top: 15px;">
      <el-table-column align="center"
                       label="用户id"
                       width="95">
        <template slot-scope="scope">
          {{ scope.row.userId }}
        </template>
      </el-table-column>
      <el-table-column label="创建日期"
                       width="150"
                       align="center">
        <template slot-scope="scope">
          {{ scope.row.createDate}}
        </template>
      </el-table-column>
      <el-table-column label="创建时间"
                       width="150"
                       align="center">
        <template slot-scope="scope">
          {{ scope.row.createTime}}
        </template>
      </el-table-column>
      <el-table-column label="用户姓名"
                       width="150"
                       align="center">
        <template slot-scope="scope">
          {{ scope.row.name}}
        </template>
      </el-table-column>
      <el-table-column label="用户头像">
        <template slot-scope="scope">
          <span>{{ scope.row.avatar }}</span>
        </template>
      </el-table-column>
      <el-table-column fixed="right"
                       label="操作"
                       width="100">
        <template slot-scope="scope">
          <el-button @click="memberDetail(scope.row)"
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
    <el-dialog title="用户详情"
               :visible.sync="memberDetailFormVisible">
      <el-form :model="detailMember">
        <el-form-item label="用户ID"
                      :label-width="formLabelWidth">
          <el-input v-model="detailMember.userId"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="创建日期"
                      :label-width="formLabelWidth">
          <el-input v-model="detailMember.createDate"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="创建时间"
                      :label-width="formLabelWidth">
          <el-input v-model="detailMember.createTime"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="用户姓名"
                      :label-width="formLabelWidth">
          <el-input v-model="detailMember.name"
                    autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="用户头像"
                      :label-width="formLabelWidth">
          <el-input v-model="detailMember.avatar"
                    type="textarea"
                    :rows="4"
                    autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="memberDetailFormVisible = false">取消</el-button>
      </div>
    </el-dialog>
    <!-- 编辑 -->
  </div>
</template>

<script>
import { getMemberPage, getSearchMember } from '@/api/member'

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
      memberList: [],
      listLoading: true,
      searchMemberVal: '',
      formLabelWidth: '120px',
      memberDetailFormVisible: false,
      detailMember: {},
      pageSize: 10,
      currPage: 1,
      totalCount: 0,
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
      this.updateMember(this.searchMemberVal, this.currPage, this.pageSize)
    },
    memberDetail (member) {
      this.detailMember = member
      this.memberDetailFormVisible = true
    },
    searchMember () {
      this.updateMember(this.searchMemberVal, this.currPage, this.pageSize)
    },
    updateMember (searchMemberVal, currPage, pageSize) {
      this.listLoading = true
      // if (searchMemberVal.trim().length === 0) {
      //   return false
      // }
      let searchMember = {
        'name': searchMemberVal,
        'currPage': currPage,
        'pageSize': pageSize
      }
      getMemberPage(searchMember).then(response => {
        if (response.code === 20000 && response.data.length > 0) {
          this.memberList = response.data
          this.totalCount = response.totalCount
          this.detailMember = this.memberList[0]
        } else {
          this.memberList = []
          this.totalCount = 0
        }
      })
      this.listLoading = false

    },
    handleCurrentChange (data) {
      this.updateMember(this.searchMemberVal, data, this.pageSize)
    },
    changePageSize (data) {
      this.updateMember(this.searchMemberVal, this.currPage, data)
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

