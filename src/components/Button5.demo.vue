<demo>
5 支持显示加载
</demo>

<template>
    <Button loading>加载中</Button>
    <Button>加载完毕</Button>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';

export default {
  components: {Button},
};
</script>