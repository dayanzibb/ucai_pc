<template>
  <div class="home">
  	<Header></Header>
    <router-view></router-view>
    <Footer></Footer>
    <toTop></toTop>
  </div>
</template>

<script>
// @ is an alias to /src
import "jquery"
import "popper.js"
import "bootstrap"
import "@/assets/css/bootstrap.css"
import "@/assets/css/base.css"
import "@/assets/css/toTop.css"
import "@/assets/js/jquery-3.2.1.js"


import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import toTop from '@/components/toTop.vue'

export default {
  components: {
    Header,
    Footer,
    toTop
  }
}
</script>
<style scoped>

</style>
