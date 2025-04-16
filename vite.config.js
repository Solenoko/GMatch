import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import ViteRuby from 'vite-plugin-ruby';

export default defineConfig({
  plugins: [vue(), ViteRuby()],
  server: {
    port: 3000,
  },
  build: {
    outDir: 'app/assets/builds',
    rollupOptions: {
      input: 'app/javascript/entrypoints/application.js',
    },
  },
});
