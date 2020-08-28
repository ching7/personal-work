<template>
  <div class="app-container">
    <el-input v-model="filterText"
              placeholder="输入查找的类别，支持模糊匹配"
              style="margin-bottom:30px;"
              class='search-input-prd'>
      <el-button slot="append"
                 icon="el-icon-search"></el-button>
    </el-input>
    <div style="width:30%;display: inline-flex;border">
      <el-tree ref="tree2"
               :data="data2"
               :props="defaultProps"
               :filter-node-method="filterNode"
               :render-content='renderContent'
               :highlight-current='true'
               :expand-on-click-node='false'
               class="filter-tree"
               default-expand-all />
    </div>
    <div style="width: 60%;display: inline-flex;">
      <el-table :data="tableData"
                border
                style="width: 100%">
        <el-table-column prop="date"
                         label="日期"
                         width="180">
        </el-table-column>
        <el-table-column prop="name"
                         label="姓名"
                         width="180">
        </el-table-column>
        <el-table-column prop="address"
                         label="地址">
        </el-table-column>
      </el-table>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      filterText: '',
      data2: [{
        id: 1,
        label: '果蔬',
        children: [{
          id: 4,
          label: '热带水果',
          children: [{
            id: 9,
            label: '芒果'
          }, {
            id: 10,
            label: '榴莲'
          }]
        }]
      }, {
        id: 2,
        label: '坚果',
        children: [{
          id: 5,
          label: '核桃'
        }, {
          id: 6,
          label: '杏仁'
        }]
      }, {
        id: 3,
        label: '肉类',
        children: [{
          id: 7,
          label: '羊肉'
        }, {
          id: 8,
          label: '猪肉'
        }]
      }],
      defaultProps: {
        children: 'children',
        label: 'label'
      },
      tableData: [{
        date: '2016-05-02',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1518 弄'
      }, {
        date: '2016-05-04',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1517 弄'
      }, {
        date: '2016-05-01',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1519 弄'
      }, {
        date: '2016-05-03',
        name: '王小虎',
        address: '上海市普陀区金沙江路 1516 弄'
      }]

    }
  },
  watch: {
    filterText (val) {
      this.$refs.tree2.filter(val)
    }
  },

  methods: {
    filterNode (value, data) {
      if (!value) return true
      return data.label.indexOf(value) !== -1
    },
    renderContent (h, { node, data, store }) {
      return (
        <span class="custom-tree-node">
          <span>{node.label}</span>
          <span>
            <el-button size="mini" type="text" on-click={() => this.append(data)}>新增</el-button>
            <el-button size="mini" type="text" on-click={() => this.remove(node, data)}>删除</el-button>
          </span>
        </span>);
    }
  }
}
</script>
<style>
.search-input-prd {
  width: 50%;
  margin-left: 2%;
  display: table;
}
</style>
