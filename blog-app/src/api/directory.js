import request from '@/request'

export function getDirectory(id) {
    return request({
      url: `/directorys`,
      method: 'get'
    })
  }