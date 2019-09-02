<template>
<ul>
  <li v-for="(user) in users" :key="user.name">
    {{user.name}}
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
    axios.get('/api/users').then(response=>{
      this.users=response.data;
    })
  }
}
</script>

<style>
</style>
