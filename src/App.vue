<template>
<ul>
  <li v-for="(user) in users" :key="user.name">
    {{user.name}}:{{user.value}}
  </li>
</ul>
</template>

<script>
import axios from 'axios';

export default {
  name: 'app',
  data(){
    return {
      users:[]
    }
  },
  mounted(){
    axios.get('http://39.107.51.58:3000/api/users').then(response=>{
      this.users=response.data;
    })
  }
}
</script>

<style>
</style>
