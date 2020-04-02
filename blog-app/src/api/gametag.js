import request from '@/request'

export function getAllGameTags() {
    return request({
      url: '/game_tags/',
      method: 'get',
    })
  }

  export function getAllGameTagsDetail() {
    return request({
      url: '/game_tags/detail',
      method: 'get',
    })
  }


  export function getGameTag(id) {
    return request({
      url: `/game_tags/${id}`,
      method: 'get',
    })
  }
  
  export function getGameTagDetail(id) {
    return request({
      url: `/game_tags/detail/${id}`,
      method: 'get',
    })
  }
  