<template>
  <div class="app-container">

    <el-form :model="userDetailInfo"
             status-icon
             ref="ruleForm"
             label-width="100px"
             class="demo-ruleForm">
      <el-form-item label="管理员Id">
        <el-input v-model="userDetailInfo.adminId"
                  autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item label="管理员姓名">
        <el-input v-model="userDetailInfo.name"></el-input>
      </el-form-item>
      <el-form-item label="管理员账号">
        <el-input v-model="userDetailInfo.userName"
                  autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item label="管理员密码">
        <el-input type="password"
                  v-model="userDetailInfo.userPassword"></el-input>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  data () {
    return {
    }
  },
  watch: {
  },
  computed: {
    ...mapGetters([
      'sidebar',
      'avatar',
      'userDetailInfo'
    ])
  },
  created () {
  },
  methods: {
    init () {
      this.$nextTick({

      })
    }
  }
}
</script>

<style scoped>
</style>

