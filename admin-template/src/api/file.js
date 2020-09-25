import request from '@/utils/request'

export const FILE_UPLOAD_URL = 'http://localhost:3333' + '/oss/minio/upload'

export function viewFiles () {
  return request({
    url: '/oss/minio/view',
    method: 'get'
  })
}
