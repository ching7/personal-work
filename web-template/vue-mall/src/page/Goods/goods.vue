<template>
  <div class="goods">
    <div class="nav">
      <div class="w">
        <a href="javascript:;"
           :class="{active:sortType===1}"
           @click="reset()">综合排序</a>
        <a href="javascript:;"
           @click="sort(1)"
           :class="{active:sortType===2}">价格从低到高</a>
        <a href="javascript:;"
           @click="sort(-1)"
           :class="{active:sortType===3}">价格从高到低</a>
        <div class="price-interval">
          <input type="number"
                 class="input"
                 placeholder="价格"
                 v-model="params.min">
          <span style="margin: 0 5px"> - </span>
          <input type="number"
                 placeholder="价格"
                 v-model="params.max">
          <y-button text="确定"
                    classStyle="main-btn"
                    @btnClick="reset"
                    style="margin-left: 10px;"></y-button>
        </div>
      </div>
    </div>
    <div v-show="busy"
         class="w load-more">
      {{tip}}
    </div>
    <!--商品-->
    <div class="goods-box w">
      <mall-goods v-for="(item,i) in products"
                  :key="i"
                  :msg="item"></mall-goods>
      <div style="display:block">
        <el-pagination layout="total, sizes, prev, pager, next"
                       :total="params.totalCount"
                       @current-change="handleCurrentChange"
                       @size-change='changePageSize'
                       :page-size='params.pageSize'
                       background>
        </el-pagination>
      </div>
    </div>

  </div>
</template>
<script>
import { getProducts } from '/api/goods'
import mallGoods from '/components/mallGoods'
import YButton from '/components/YButton'
export default {
  data () {
    return {
      tip: '正在加载。。。。。。',
      products: [],
      busy: false,
      timer: null,
      sortType: 1,
      windowHeight: null,
      windowWidth: null,
      params: {
        currCate: [], // 当前分类，默认查全部分类
        currProName: '', // 当前查找商品名
        currPage: 1,  // 页码
        pageSize: 10, // 每页显示数量
        totalCount: 0,
        sort: '1', // 排序
        min: '0',  // 最小价格
        max: '9999'
      }
    }
  },
  methods: {
    handleCurrentChange (data) {
      this.params.currPage = data
      this._getProducts()
    },
    changePageSize (data) {
      this.params.pageSize = data
      this._getProducts()
    },
    _getProducts (flag) {
      const { currPage, pageSize, currProName, currCate, sort, min, max } = this.params
      let params = {
        currPage,
        currCate,
        pageSize,
        currProName,
        sort,
        priceGt: min,
        priceLte: max
      }
      getProducts(params).then(res => {
        this.params.totalCount = res.totalCount
        if (res.result.count) {
          let data = res.result.data
          if (flag) {
            this.products = this.products.concat(data)
          } else {
            this.products = data
          }
          this.busy = false
        } else if (res.result.count === 0) {
          this.tip = '暂无数据'
          this.products = []
          this.busy = true
        } else {
          this.busy = true
        }
      })
    },
    // 默认排序
    reset () {
      this.sortType = 1
      this.params.sort = ''
      this.params.page = 1
      this.busy = false
      this._getProducts()
    },
    // 价格排序
    sort (v) {
      v === 1 ? this.sortType = 2 : this.sortType = 3
      this.params.sort = v
      this.params.page = 1
      this.busy = false
      this._getProducts()
    }
  },
  created () {
    this.params.currCate = this.$route.query.currCate.length === 0 ? 0 : this.$route.query.currCate[this.$route.currCate.length - 1]
    this.params.currProName = this.$route.query.currProName
    this._getProducts()
  },
  watch: {
    '$route' (to, from) { // 监听路由是否变化
      if ((to.query.currCate !== from.query.currCate) || (to.query.currProName !== from.query.currProName)) {
        this.params.currCate = to.query.currCate.length === 0 ? 0 : to.query.currCate[to.query.currCate.length - 1]
        this.params.currProName = to.query.currProName
        this._getProducts()// 重新加载数据
      }
    }
  },
  mounted () {
    this.params.currCate = this.$route.query.currCate.length === 0 ? 0 : this.$route.query.currCate[this.$route.currCate.length - 1]
    this.params.currProName = this.$route.query.currProName
    this._getProducts()
    this.windowHeight = window.innerHeight
    this.windowWidth = window.innerWidth
  },
  components: {
    mallGoods,
    YButton
  }
}
</script>
<style lang="scss" rel="stylesheet/scss" scoped>
@import "../../assets/style/mixin";
@import "../../assets/style/theme";

.nav {
  height: 60px;
  line-height: 60px;
  > div {
    display: flex;
    align-items: center;
    a {
      padding: 0 15px;
      height: 100%;
      @extend %block-center;
      font-size: 12px;
      color: #999;
      &.active {
        color: #5683ea;
      }
      &:hover {
        color: #5683ea;
      }
    }
    input {
      @include wh(80px, 30px);
      border: 1px solid #ccc;
    }
    input + input {
      margin-left: 10px;
    }
  }
  .price-interval {
    padding: 0 15px;
    @extend %block-center;
    input[type="number"] {
      border: 1px solid #ccc;
      text-align: center;
      background: none;
      border-radius: 5px;
    }
  }
}
.load-more {
  text-align: center;
  background: #fff;
}
.goods-box {
  > div {
    display: inline-table;
    border: 1px solid #efefef;
  }
}
</style>
