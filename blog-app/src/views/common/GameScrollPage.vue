<template>
  <scroll-page :loading="loading" :offset="offset" :no-data="noData" v-on:load="load">
    <game-item v-for="a in games" :key="a.id" v-bind="a"></game-item>
  </scroll-page>
</template>

<script>
  import GameItem from '@/components/game/GameItem'
  import ScrollPage from '@/components/scrollpage'
  import {getGames} from '@/api/games'

  export default {
    name: "GameScrollPage",
    props: {
      offset: {
        type: Number,
        default: 100
      },
      page: {
        type: Object,
        default() {
          return {}
        }
      },
      query: {
        type: Object,
        default() {
          return {}
        }
      }
    },
    watch: {
      'query': {
        handler() {
          this.noData = false
          this.games = []
          this.innerPage.pageNumber = 1
          this.getGames()
        },
        deep: true
      },
      'page': {
        handler() {
          this.noData = false
          this.games = []
          this.innerPage = this.page
          this.getGames()
        },
        deep: true
      }
    },
    created() {
      this.getGames()
    },
    data() {
      return {
        loading: false,
        noData: false,
        innerPage: {
          pageSize: 5,
          pageNumber: 1,
          
        },
        games: []
      }
    },
    methods: {
      load() {
        this.getGames()
      },
      view(id) {
        this.$router.push({path: `/view/${id}`})
      },
      getGames() {
        let that = this
        that.loading = true

        getGames(that.query, that.innerPage).then(data => {

          let newGames = data.data
          if (newGames && newGames.length > 0) {
            that.innerPage.pageNumber += 1
            that.games = that.games.concat(newGames)
          } else {
            that.noData = true
          }

        }).catch(error => {
          if (error !== 'error') {
            that.$message({type: 'error', message: 'fail!', showClose: true})
          }
        }).finally(() => {
          that.loading = false
        })

      }
    },
    components: {
      'game-item': GameItem,
      'scroll-page': ScrollPage
    }

  }
</script>

<style scoped>
  .el-card {
    border-radius: 0;
  }

  .el-card:not(:first-child) {
    margin-top: 10px;

  }
</style>
