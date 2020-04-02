import request from '@/request'

export function getAllGameCategorys(){
    return request(
        {
            url:'/game_categories',
            method: 'get',
        }
    )
}

export function getAllGameCategorysDetail(){
    return request(
        {
            url: '/game_categories/detail',
            method: 'get',
        }
    )
}

export function getGameCategory(id){
    return request(
        {
            url: `/game_categories/${id}`,
            method: 'get',
        }
    )
}

export function getGameCategoryDetail(id){
    return request(
        {
            url: `/game_categories/detail/${id}`,
            method: 'get',
        }
    )
}