<template>
  <div>
    <h2>Game List</h2>
    <ul>
      <li v-for="game in games" :key="game.id">
        {{ game.title }} - {{ game.genre }}
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'

const games = ref([])

onMounted(async () => {
  const response = await fetch('/games.json')
  games.value = await response.json()
})
</script>
