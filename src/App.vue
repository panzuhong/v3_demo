<template>
  <div>
    <input type="text" v-model="val" @keyup.enter="addTodo"/>
    <ul>
      <li v-for="todo in todos" :key="todo.id">
        {{todo.title}} 
      </li>
    </ul>
  </div>
</template>

<script>

import {reactive, ref} from 'vue';
export default {
  setup () {
    let val = ref('');
    const todos = reactive([
      {id: 0, title: "吃饭", done: false},
      {id: 1, title: "睡觉", done: false},
      {id: 2, title: "喝水", done: false}
    ])
    function addTodo () {
      todos.push({
        id: todos.length,
        title: val.value,
        done: false
      });
      val.value = '';
    }
    return {val, todos, addTodo}
  }
  // data () {
  //   return {
  //     val: "",
  //     todos: [
  //       {id: 0, title: "吃饭", done: false},
  //       {id: 1, title: "睡觉", done: false}
  //     ]
  //   }
  // },
  // methods: {
  //   addTodo () {
  //     this.todos.push({
  //       id: this.todos.length,
  //       title: this.val,
  //       done: false
  //     });
  //     this.val = '';
  //   }
  // }
}
</script>

