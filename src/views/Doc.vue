<template>
  <div class="layout">
    <TopNav :toggle-menu-button-visible="true" class="nav"/>
    <div class="content">
      <aside v-if="menuVisible">
        <h2><strong>文档</strong></h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-started">开始使用</router-link>
          </li>
        </ol>
        <h2><strong>组件列表</strong></h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog 组件</router-link>
          </li>
          <li>
            <router-link to="/doc/Tabs">Tabs 组件</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view/>
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import TopNav from '../components/TopNav.vue';
import {inject, Ref} from 'vue';

export default {
  components: {TopNav},
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible'); //get
    return {menuVisible};
  }
};
</script>

<style lang="scss" scoped>
$color: #eb5134;
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;

  > .nav {
    flex-shrink: 0;
  }

  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}

.content {
  display: flex;

  > aside {
    flex-shrink: 0;

  }

  > main {
    flex-grow: 1;
    padding: 16px;
    background: #fff;
  }
}

aside {
  background: rgba(255, 226, 191, 1);
  width: 150px;
  padding: 16px 0;
  position: fixed;
  top: 0;
  left: 0;
  padding-top: 70px;
  height: 100%;
  z-index: 1;

  > h2 {
    margin-bottom: 4px;
    padding: 0 16px;
  }

  > ol {
    > li {
      padding: 4px 0;

      > a {
        display: block;
        padding: 4px 16px;
        text-decoration: none;
        &:hover {
          font-weight: bold;
        }
      }
      .router-link-active {
        background: #fff;
        font-weight: bold;
      }
    }
  }
}

main {
  overflow: auto;
}
</style>
