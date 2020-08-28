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

export function transactionList (query) {
  return request({
    url: '/vue-element-admin/transaction/list',
    method: 'get',
    params: query
  })
}

export function getSearchOrder (query) {
  return request({
    url: '/api/admin/getSearchOrder',
    method: 'get',
    params: { query }
  })
}

