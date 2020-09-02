import request from '@/utils/request'


export function getCateAll (query) {
  return request({
    url: '/api/prdCate/admin/getCateAll',
    method: 'get',
    params: query
  })
}

//不存在支持新增
export function getCatePrd (param) {
  return request({
    url: '/api/prdCate/admin/getCatePrd',
    method: 'get',
    params: param
  })
}

