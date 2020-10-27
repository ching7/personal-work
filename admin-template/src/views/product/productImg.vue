<!--  -->
<template>
  <div
    class=""
    style="height: 100px;overflow-x: auto;"
  >
    <div
      v-for="(imgurl,index) in imgArr"
      :key="index"
      style="display: inline;"
    >
      <img
        v-if="imgurl && imgurl.trim().length>0"
        :src="imgurl"
        alt=""
        class="img-thumbt"
        srcset=""
      >
    </div>
  </div>
</template>

<script>
// 这里可以导入其他文件（比如：组件，工具js，第三方插件js，json文件，图片文件等等）
// 例如：import 《组件名称》 from '《组件路径》';

export default {
  // import引入的组件需要注入到对象中才能使用
  components: {},
  props: {
    imgUrls: {
      type: String,
      required: true
    }
  },
  data () {
    // 这里存放数据
    return {
      imgArr: [],
      imgSrc: '',
      showImg: false
    }
  },
  // 监听属性 类似于data概念
  computed: {
    // imgUrls (val) {
    //   this.init()
    // }
  },
  // 监控data中的数据变化
  watch: {
    imgUrls () {
      if (this.imgUrls && this.imgUrls.match('http')) {
        this.imgArr = this.imgUrls.split(',')
        this.showImg = true
      } else {
        this.imgArr = []
      }
    }
  },
  // 生命周期 - 创建完成（可以访问当前this实例）
  created () {
    this.init()
  },
  // 生命周期 - 挂载完成（可以访问DOM元素）
  mounted () {

  },
  beforeCreate () { }, // 生命周期 - 创建之前
  beforeMount () { }, // 生命周期 - 挂载之前
  beforeUpdate () { }, // 生命周期 - 更新之前
  updated () { }, // 生命周期 - 更新之后
  beforeDestroy () { }, // 生命周期 - 销毁之前
  destroyed () { }, // 生命周期 - 销毁完成
  activated () { },
  // 方法集合
  methods: {
    init () {
      if (this.imgUrls && this.imgUrls.match('http')) {
        this.imgArr = this.imgUrls.split(',')
        this.showImg = true
      } else {
        this.imgArr = []
      }
    }
  } // 如果页面有keep-alive缓存功能，这个函数会触发
}
</script>
<style scoped>
.img-thumbt {
  width: 80px;
  height: 80px;
  object-fit: contain;
}
</style>
