<template>
  <div>
    <button class="koi-button"
    :class="`koi-theme-${theme}`"
    >
      <slot />
    </button>
  </div>
</template>
<script lang="ts">
export default {
  // props 要先声明才能取、，attrs 不用先声明
  // props 不包含事件，attrs 包含
  // props 没有申明的属性，会跑到 attrs 里面
  // props 支持 string 以外的类型， attrs 只有 string 类型
  props:{
    theme:{
      type:String,
      default:'button'
    }

  },
}
</script>
<style lang="scss">
$h: 32px;
$border-color: #d9d9d9;
$color: #333;
$blue: #40a9ff;
$radius: 4px;
$red: red;
$grey: grey;
.koi-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;
  & + & {
    margin-left: 8px;
  }
  &:hover,
  &:focus {
    color: $blue;
    border-color: $blue;
  }
  &:focus {
    outline: none;
  }

  &::-moz-focus-inner {
    border: 0;
  }
}
</style>