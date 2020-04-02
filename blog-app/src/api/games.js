import request from '@/request'

export function getGames(query, page){
    return request({
        url:'/games',
        method: 'get',
        params:{
            pageNumber: page.pageNumber,
            pageSize: page.pageSize,
            name: page.name,
            sort: page.sort,
            year: query.year,
            month: query.month,
            tagId: query.tagId,
            categoryId: query.categoryId
        }
    })
}

export function getGamesByCategory(id){
    return request({
        url: `/games/game_category/${id}`,
        method: 'get'
    }
    )
}

export function getGamesByTag(id){
    return request(
        {
            url:`/games/game_tag/${id}`,
            method: 'get'
        }
    )
}

export function getGameById(id){
    return request(
        {
            url: `/games/${id}`,
            method:'get'
        }
    )
}