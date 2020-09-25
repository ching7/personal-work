import request from '@/utils/request'

export function getAdminIndexMsg () {
  return request({
    url: '/api/goods/admin/getAdminIndexMsg',
    method: 'get'
  })
}

export function getGoodsPage (query) {
  return request({
    url: '/api/goods/admin/getGoodsPage',
    method: 'get',
    params: query
  })
}

//不存在支持新增
export function putUpdateGood (param) {
  return request({
    url: '/api/goods/admin/putUpdateGood',
    method: 'post',
    params: param
  })
}
//删除商品
export function putDelGood (param) {
  return request({
    url: '/api/goods/admin/putDelGood',
    method: 'post',
    params: param
  })
}

export function getSearchGoods (param) {
  return request({
    url: '/api/goods/admin/getSearchGoods',
    method: 'post',
    params: param
  })
}
