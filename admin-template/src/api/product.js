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
