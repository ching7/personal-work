import request from '@/utils/request'

export function getOrderAll (name) {
  return request({
    url: '/api/admin/orderListAll',
    method: 'get',
    params: { name }
  })
}

export function transactionList (query) {
  return request({
    url: '/vue-element-admin/transaction/list',
    method: 'get',
    params: query
  })
}
