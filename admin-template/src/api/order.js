import request from '@/utils/request'

export function getOrderAll (name) {
  return request({
    url: '/api/admin/orderListAll',
    method: 'get',
    params: { name }
  })
}

export function getOrderPage (query) {
  return request({
    url: '/api/admin/getOrderPage',
    method: 'get',
    params: { query }
  })
}

export function getSearchOrderPage (query) {
  return request({
    url: '/api/admin/getSearchOrderPage',
    method: 'get',
    params: query
  })
}

