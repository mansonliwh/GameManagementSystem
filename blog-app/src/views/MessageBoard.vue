<template>

  <div class="me-message" v-title :data-title="title">
    <el-container class="">

    </el-container>
  </div>
</template>

<script>
  export default {
    name: 'MessageBoard',
    data() {
      return {
      }
    },
    computed: {
      title (){
        return 'board'
      }
    }
  }
</script>

<style scoped>
  .me-message {
  }

  .el-container {
    width: 700px;
  }

  .me-main {
    overflow: hidden;
  }

  .me-log-box {
    margin-left: 30%;
    margin-top: 20px;

  }

</style>
