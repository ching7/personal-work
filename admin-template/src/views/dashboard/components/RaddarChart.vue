<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'

const animationDuration = 3000

export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '400px'
    }
  },
  data () {
    return {
      chart: null
    }
  },
  mounted () {
    this.$nextTick(() => {
      this.initChart()
    })
  },
  beforeDestroy () {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    initChart () {
      this.chart = echarts.init(this.$el, 'macarons')

      this.chart.setOption({
        tooltip: {
          trigger: 'axis',
          axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
          }
        },
        radar: {
          radius: '66%',
          center: ['50%', '42%'],
          splitNumber: 8,
          splitArea: {
            areaStyle: {
              color: 'rgba(127,95,132,.3)',
              opacity: 1,
              shadowBlur: 45,
              shadowColor: 'rgba(0,0,0,.5)',
              shadowOffsetX: 0,
              shadowOffsetY: 15
            }
          },
          indicator: [
            { name: '库存', max: 10000 },
            { name: '销量', max: 20000 },
            { name: '好评率', max: 20000 },
            { name: '点赞数', max: 20000 },
            { name: '收藏数', max: 20000 },
            { name: '差评数', max: 20000 }
          ]
        },
        legend: {
          left: 'center',
          bottom: '10',
          data: ['新鲜水果', '蔬菜蛋品', '海鲜水产', '精选肉类', '冷冻素食', '地方特色']
        },
        series: [{
          type: 'radar',
          symbolSize: 0,
          areaStyle: {
            normal: {
              shadowBlur: 13,
              shadowColor: 'rgba(0,0,0,.2)',
              shadowOffsetX: 0,
              shadowOffsetY: 10,
              opacity: 1
            }
          },
          data: [
            {
              value: [5000, 7000, 12000, 11000, 15000, 14000],
              name: '新鲜水果'
            },
            {
              value: [4000, 2000, 15000, 15000, 13000, 11000],
              name: '蔬菜蛋品'
            },
            {
              value: [5500, 1000, 5000, 15000, 12000, 12000],
              name: '海鲜水产'
            },
            {
              value: [1500, 7000, 8000, 11000, 15000, 14000],
              name: '精选肉类'
            },
            {
              value: [4000, 9000, 15000, 15000, 13000, 11000],
              name: '冷冻素食'
            },
            {
              value: [1000, 11000, 12000, 15000, 12000, 12000],
              name: '地方特色'
            }
          ],
          animationDuration: animationDuration
        }]
      })
    }
  }
}
</script>
