<template>
  <section class="container">
    <div>
      <h3>Users</h3>
      <ul>
        <li v-for="user in users" :key="user.id">
          <h4>
            <span>{{user.name}}</span>
            <small> by {{user.id}}</small>
          </h4>
        </li>
      </ul>
    </div>
  </section>
</template>

<script>
  export default {
    async asyncData({ app }){
      const users = await app.$axios.$get('http://kong:8000/api/users');
      return {
        users
      }
    }
  }
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

</style>

