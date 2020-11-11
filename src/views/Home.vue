<template>
  <div>
    <div class="topnavAndBanner">
      <TopNav/>
      <div class="banner">
        <h1>Koi UI</h1>
        <h2>一个自建的 UI 框架</h2>
        <p class="actions">
          <a href="https://github.com/xkaixiong/">Github</a>
          <a href="">
            <router-link to="/doc">开始</router-link>
          </a>
        </p>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-light"></use>
          </svg>
          <h3>容易学习</h3>
          <p>各部分组件代码书写简洁</p>
        </li>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>应用 Vue 3 Composition API</p>
        </li>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript</h3>
          <p>采用 TypeScript 书写源代码</p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
import TopNav from '../components/TopNav.vue';

export default {
  components: {TopNav}
};
</script>

<style lang="scss" scoped>
$orange: #eb5134;
$color: #eb5134;
.topnavAndBanner {
  background: linear-gradient(145deg, rgba(255, 226, 191, 1) 0%, rgba(255, 202, 142, 1) 100%);
  border-bottom-left-radius: 100% 50%;
  border-bottom-right-radius: 100% 50%;
}
.features {
  margin: 64px auto;
  padding: 0 48px;
  @media (min-width: 800px) {
    width: 800px;
    >ul{
      >li{
        width: 50%;}
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    >ul{
      >li{
        width: 33.3333%;}
    }
  }

  > ul {
    display: flex;
    flex-wrap: wrap;

    > li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      > h3 {
        grid-area: title;
        font-size: 28px;
      }

      > p {
        grid-area: text;
        >a:hover{
          font-weight: bold;
        }
      }
    }
  }
}
.banner {
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  color: $color;
  > .actions {
    a {
      padding: 0 8px;
      margin: 0 8px;
      background: $orange;
      color:rgba(255, 226, 191, 1);
      display: inline-block;
      $h: 36px;
      height: $h;
      line-height: $h;
      border-radius: $h/2;
      .div{
      }
      &:hover {
        text-decoration: none;
        color:#fff;
      }
    }
  }
}
</style>

