<template>
  <div v-title :data-title="title">
    <el-container>

      <el-aside class="me-area">
        <ul class="me-month-list">

          <li v-for="a in directorys" :key="a.directoryname" class="me-month-item">
            <el-badge :value="a.count">
              <el-button @click="changeArchive(a.gameid)" size="small">{{a.directoryname}}
              </el-button>
            </el-badge>
          </li>
          
        </ul>

      </el-aside>


      <el-main class="me-articles">
        <div class="me-month-title">{{currentArchive}}</div>

        <game-scroll-page v-bind="game"></game-scroll-page>

      </el-main>
    </el-container>
  </div>

</template>

<script>
  import GameScrollPage from '@/views/common/GameScrollPage'
  import {listArchives} from '@/api/article'
  import {getDirectory} from '@/api/directory'
  export default {
    name: "BlogArchive",
    components: {
      GameScrollPage
    },
    created() {
      this.getDirectory()
      
    },
    watch: {
      '$route'() {
        if (this.$route.params.gameid) {
          this.game.query.id = this.$route.params.gameid
        }
      }
    },
    data() {
      return {
        game: {
          query: {
            id :this.$route.params.gameid
          }
        },
        directorys: []
      }
    },
    computed: {
      title (){
        return this.currentArchive + ' currentArchive'
      },
      currentArchive (){
        if(this.game.query.id){
          return `aaa`
        }
        return 'All'
      }
    },
    methods: {

      changeArchive(gameid) {
        // this.currentArchive = `${year}年${month}月`
        // this.article.query.year = year
        // this.article.query.month = month
        this.$router.push({path: `/archives/${gameid}`})
      },
      getDirectory() {
        getDirectory().then((data => {
          this.directorys = data.data
        })).catch(error => {
          that.$message({type: 'error', message: 'load fail!', showClose: true})
        })
      }
    }
  }
</script>

<style scoped>

  .el-container {
    width: 640px;
  }

  .el-aside {
    position: fixed;
    left: 200px;
    margin-right: 50px;
    width: 150px !important;
  }

  .el-main {
    padding: 0px;
    line-height: 16px;
  }

  .me-month-list {
    margin-top: 10px;
    margin-bottom: 10px;
    text-align: center;
    list-style-type: none;
  }

  .me-month-item {
    margin-top: 18px;
    padding: 4px;
    font-size: 18px;
    color: #4169E1;
  }

  .me-order-list {
    float: right;
  }

  .me-month-title {
    margin-left: 4px;
    margin-bottom: 12px;
  }
</style>
