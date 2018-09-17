# Fullscreen Toggle for GVIM (Windows only)

Original code by [Derek McLoughlin](https://github.com/derekmcloughlin/gvimfullscreen_win32)

Forked and modified into a plugin by Jonatas Medeiros.

## What is this

A plugin for toggling gvim into a fullscreen window. For Windows gvim only.

## Instalation

Using vim-plug add this to your .vimrc:
```vim
Plug 'jonatascmedeiros/gvimfullscreen_win32'
```

Then install the plugin with:
```vim
:PlugInstall
```

## Usage

Create a convenient mapping in your .vimrc, for example:
```vim
nnoremap <F11> :call ToggleFullscreen()<CR>
```
