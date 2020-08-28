import request from '@/utils/request'


export function getMemberPage (query) {
  return request({
    url: '/api/member/admin/getMemberPage',
    method: 'get',
    params: query
  })
}

//不存在支持新增
export function getSearchMember (param) {
  return request({
    url: '/api/member/admin/getSearchMember',
    method: 'post',
    params: param
  })
}

