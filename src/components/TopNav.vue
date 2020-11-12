<template>
  <div>
    <div class="topNav">
      <router-link to="/" class="logo" @click="toggleMenu">
        <svg class="icon">
          <use xlink:href="#icon-fish"></use>
        </svg>
      </router-link>
      <ul class="menu">
        <li>
          <router-link to="/doc">文档</router-link>
        </li>
      </ul>
      <svg v-if="toggleMenuButtonVisible"
           class="toggleAside" @click="toggleMenu">
        <use xlink:href="#icon-menu"></use>
      </svg>
    </div>
  </div>
</template>
<script lang="ts">
import {inject, Ref} from 'vue';

export default {
  props: {
    toggleMenuButtonVisible: {
      type: Boolean,
      default: false
    }
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible'); //get
    const toggleMenu = () => {
      menuVisible.value = !menuVisible.value;
    };
    return {toggleMenu};
  }
};
</script>
<style lang="scss" scoped>
$color: #eb5134;
.topNav {
  color: $color;
  display: flex;
  padding: 16px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 20;
  justify-content: center;
  align-items: center;

  > svg:active {
    width: 44px;
    height: 44px;
  }

  > svg:hover {
    width: 44px;
    height: 44px;
  }

  > .logo {
    max-width: 6em;
    margin: 0 auto;

    > svg {
      width: 48px;
      height: 48px;

      :active {
        transform: scale(1.1);
      }

      :hover {
        transform: scale(1.1);
      }
    }
  }

  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }

  > .toggleAside {
    width: 40px;
    height: 40px;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    //display: none;
  }

  @media (max-width: 500px) {
    //> .menu {
    //  display: none;
    //}
    > .logo {
      margin: 0 auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>

export {TopNav}