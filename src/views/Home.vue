<template>
  <div class="topnavAndBanner">
    <TopNav/>
    <div class="banner">
      <h1>Koi UI</h1>
      <h2>一个自建的 UI 框架</h2>
      <p class="actions">
        <a href="https://github.com/xkaixiong/">Github</a>
        <a href=""><router-link to="/doc">开始</router-link></a>
      </p>
    </div>
    <div class="features">
      <svg class="icon">
        <use xlink:href="#icon-vue"></use>
      </svg>
      <svg class="icon">
        <use xlink:href="#icon-ts"></use>
      </svg>
      <svg class="icon">
        <use xlink:href="#icon-light"></use>
      </svg>
    </div>
  </div>
</template>

<script lang="ts">
import TopNav from '../components/TopNav.vue'
export default {
  components:{TopNav}
}
</script>

<style lang="scss" scoped>
$orange:#eb5134;
$color:#eb5134;
.topnavAndBanner{
  background: linear-gradient(145deg, rgba(255,226,191,1) 0%, rgba(255,202,142,1) 100%);
}
.features{
  >svg{
    width: 64px; height: 64px;
  }
}
.banner{
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  color: $color;
  > .actions{

    a{
      padding: 0 8px; margin: 0 8px;
      background: $orange;
      color: #fff;
      display: inline-block;
      $h:36px;
      height: $h;
      line-height: $h;
      border-radius: $h/2;
      &:hover{
        text-decoration: none;
      }
    }


  }
}
</style>

