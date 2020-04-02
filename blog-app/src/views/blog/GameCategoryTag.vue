<template>
  <div class="me-ct-body" v-title :data-title="title">
    <el-container class="me-ct-container">
      <el-main>
        <div class="me-ct-title me-area">
          <template v-if="this.$route.params.type === 'tag'">
            <img class="me-ct-picture" :src="ct.avatar?ct.avatar:defaultAvatar"/>
            <h3 class="me-ct-name">{{ct.tagName}}</h3>
          </template>

          <template v-else>
            <img class="me-ct-picture" :src="ct.avatar?ct.avatar:defaultAvatar"/>
            <h3 class="me-ct-name">{{ct.categoryName}}</h3>
            <p>{{ct.description}}</p>
          </template>

          <span class="me-ct-meta">{{ct.games}} Games</span>
        </div>

        <div class="me-ct-Games">
          <scroll-page>
            <game-item v-for="a in games" :key="a.id" v-bind="a"></game-item>
          </scroll-page>
        </div>

      </el-main>
    </el-container>
  </div>
</template>

<script>
  import GameScrollPage from '@/views/common/GameScrollPage'
  import {getGamesByCategory, getGamesByTag} from '@/api/games'
  import {getGameTagDetail} from '@/api/gametag'
  import {getGameCategoryDetail} from '@/api/gamecategory'
  import GameItem from '@/components/game/GameItem'
  import ScrollPage from '@/components/scrollpage'

  export default {
    name: 'BlogCategoryTag',
    created() {
      this.getCategoryOrTagAndGames()
    },
    watch: {
      '$route': 'getCategoryOrTagAndGames'
    },
    data() {
      return {
        ct: {},
        games:{},
        game: {
          query: {
            tagId: '',
            categoryId: ''
          }
        },
      }
    },
    computed: {
      title() {
        if(this.$route.params.type === 'tag'){
          return `${this.ct.tagname} - game tag`
        }
        return `${this.ct.categoryname} - game category`
      }
    },
    methods: {
      getCategoryOrTagAndGames() {
        let id = this.$route.params.id
        let type = this.$route.params.type
        if ('tag' === type) {
          this.getGameTagDetail(id)
          this.getGamesByTag(id)
          this.game.query.tagId = id
        } else {
          this.getGamesByCategory(id)
          this.getGameCategoryDetail(id)
          this.game.query.categoryId = id
        }

      },
      getGameCategoryDetail(id) {
        let that = this
        getGameCategoryDetail(id).then(data => {
          that.ct = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'load fail', showClose: true})
          }
        })
      },
      getGameTagDetail(id) {
        let that = this
        getGameTagDetail(id).then(data => {
          that.ct = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'load fail', showClose: true})
          }
        })
      },
      getGamesByCategory(id) {
        let that = this
        getGamesByCategory(id).then(data => {
          that.games = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'load fail', showClose: true})
          }
        })
      },
      getGamesByTag(id) {
        let that = this
        getGamesByTag(id).then(data => {
          that.games = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'load fail', showClose: true})
          }
        })
      }
    },
    components: {
      'game-item': GameItem,
      'scroll-page': ScrollPage
    }
  }
</script>

<style>
  .me-ct-body {
    margin: 60px auto 140px;
    min-width: 100%;
  }

  .el-main {
    padding: 0;
  }

  .me-ct-title {
    text-align: center;
    height: 150px;
    padding: 20px;
  }

  .me-ct-picture {
    width: 60px;
    height: 60px;
  }

  .me-ct-name {
    font-size: 28px;
  }

  .me-ct-meta {
    font-size: 12px;
    color: #969696;
  }

  .me-ct-Games {
    width: 640px;
    margin: 30px auto;
  }

</style>
