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

//删除分类
export function deleteCate (param) {
  return request({
    url: '/api/prdCate/admin/deleteCate',
    method: 'get',
    params: param
  })
}

//新增分类
export function appendCate (param) {
  return request({
    url: '/api/prdCate/admin/appendCate',
    method: 'post',
    params: param
  })
}

//查询所有分类
export function getAllPrdCate () {
  return request({
    url: '/api/prdCate/admin/getAllPrdCate',
    method: 'get'
  })
}
