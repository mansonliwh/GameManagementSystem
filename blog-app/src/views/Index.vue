<template>
  <div v-title data-title="Game Collection Management System">
    <el-container>

      <el-main class="me-articles">

        <article-scroll-page></article-scroll-page>
        <game-scroll-page></game-scroll-page>

      </el-main>

      <el-aside>

        <card-tag :tags="hotTags"></card-tag>

        <card-article cardHeader="Most popular articles" :articles="hotArticles"></card-article>

        <card-article cardHeader="Recent published articles" :articles="newArticles"></card-article>

      </el-aside>

    </el-container>
   
    
  </div>
</template>

<script>
  import CardMe from '@/components/card/CardMe'
  import CardArticle from '@/components/card/CardArticle'
  import CardArchive from '@/components/card/CardArchive'
  import CardTag from '@/components/card/CardTag'
  import ArticleScrollPage from '@/views/common/ArticleScrollPage'
  import GameScrollPage from '@/views/common/GameScrollPage'

  import {getArticles, getHotArtices, getNewArtices} from '@/api/article'
  import {getGames} from '@/api/games'
  import {getGameTag} from '@/api/gametag'
  import {getHotTags} from '@/api/tag'
  import {listArchives} from '@/api/article'

  export default {
    name: 'Index',
    created() {
      this.getHotArtices()
      this.getNewArtices()
      this.getHotTags()
      this.listArchives()
      this.getGames()
      this.getGameTag()
    },
    data() {
      return {
        hotTags: [],
        hotArticles: [],
        newArticles: [],
        archives: [],
        games: []
      }
    },
    methods: {
      getHotArtices() {
        let that = this
        getHotArtices().then(data => {
          that.hotArticles = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'Failure!', showClose: true})
          }

        })

      },
        getGames() {
        let that = this
        getGames().then(data => {
          that.games = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'Failure!', showClose: true})
          }

        })

      },
      getNewArtices() {
        let that = this
        getNewArtices().then(data => {
          that.newArticles = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'Failure!', showClose: true})
          }

        })

      },
      getHotTags() {
        let that = this
        getHotTags().then(data => {
          that.hotTags = data.data
        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'Failure!', showClose: true})
          }

        })
      },
      listArchives() {
        listArchives().then((data => {
          this.archives = data.data
        })).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'Failure!', showClose: true})
          }
        })
      }

    },
    components: {
      'card-me': CardMe,
      'card-article': CardArticle,
      'card-tag': CardTag,
      ArticleScrollPage,
      CardArchive
    }
  }
</script>

<style scoped>

  .el-container {
    width: 960px;
  }

  .el-aside {
    margin-left: 20px;
    width: 260px;
  }

  .el-main {
    padding: 0px;
    line-height: 16px;
  }

  .el-card {
    border-radius: 0;
  }

  .el-card:not(:first-child) {
    margin-top: 20px;
  }
</style>

<!-- <card-archive cardHeader="Time series" :archives="archives"></card-archive>
-->
