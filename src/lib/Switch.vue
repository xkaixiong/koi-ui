<template>
  <button class="koi-switch" @click="toggle" :class="{'koi-checked':value}">
  </button>
</template>

<script lang="ts">

export default {
  props: {
    value: Boolean,
  },
  setup(props, context) {
    const toggle = () => {
      context.emit('update:value', !props.value);
    };
    return {toggle};
  }
};
</script>

<style lang="scss" >
$h: 22px;
$h2: $h - 4px;
.koi-switch {
  height: $h;
  width: $h*2;
  border: none;
  background: lightgrey;
  border-radius: $h/2;
  position: relative;

  &.koi-checked {
    background: #1890ff;

    > span {
      left: calc(95% - #{$h2});
    }
  }

  &:active {
    > span {
      width: $h2+4px;
    }
  }

  &.koi-checked:active {
    > span {
      width: $h2+4px;
      margin-left: -4px;
    }
  }

  &:focus {
    outline: none;
  }
}

span {
  position: absolute;
  top: 2px;
  left: 2px;
  height: $h2;
  width: $h2;
  background: white;
  border-radius: $h2 / 2;
  transition: left 0.3s;
}
</style>