import {defineConfig} from 'vite';
import tailwindcss from '@tailwindcss/vite';
export default defineConfig(({mode})=>({
  base: mode === 'github-pages' ? '/speak-up/' : '/',
  plugins:[tailwindcss()],
  build:{outDir:mode === 'github-pages' ? 'dist/github-pages' : 'dist',emptyOutDir:false},
  server:{proxy:{'/api':'http://127.0.0.1:4174'}}
}));
