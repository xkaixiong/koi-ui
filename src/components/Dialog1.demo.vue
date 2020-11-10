<demo>
1 常规使用
</demo>
<template>
  <div>
    <Button @click="toggle">打开对话框</Button>
    <Dialog v-model:visible="x" :close-onclick-overlay="true"
            :ok="f1" :cancel="f2">
      <template v-slot:content>
        你好
      </template>
      <template v-slot:title>
        <strong>提示</strong>
      </template>
    </Dialog>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import {ref} from 'vue';
import Dialog from '../lib/Dialog.vue';

export default {
  components: {Dialog, Button},
  setup() {
    const x = ref(false);
    const toggle = () => {x.value = !x.value;};
    const f1 = () => {return true;};
    const f2 = () => {};
    return {x, toggle, f1, f2};
  }
};
</script>