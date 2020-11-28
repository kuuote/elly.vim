## elly.vim

*elly.vim* is a nostalgic and brown-based Vim color theme.

<img alt="elly iterm2" src="https://user-images.githubusercontent.com/41639488/98157819-3f36ca00-1f1d-11eb-962c-17f33996bd48.png">

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/98123673-814c1580-1ef5-11eb-8520-06af6404e738.png">

## Installation

1. Add `Plug 'ulwlu/elly.vim'` in your .vimrc within vim-plug's loading function.
2. Run `:PlugInstall`
3. Activate by `colorscheme elly`
4. Use `set termguicolors` as well

## Issues
This theme is in early development. If you find some bugs, please submit a issue. If some highlight is strange, please submit an issue with a result of a command below.

```
:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
```

## Plugins

elly.vim is compatiable with Nerdtree, Airline, Lightline, and etc.

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/100525315-14c9eb00-3203-11eb-8cc9-ad0116d800c1.png">

![elly.vim](https://user-images.githubusercontent.com/41639488/100526196-fc110380-3209-11eb-913a-22adfa3c19ab.png)

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/98116862-3d084780-1eec-11eb-9d3c-6937554cb285.png">

### lightline

set below in vimrc
```vim
let g:lightline = {
      \ 'colorscheme': 'elly',
      \ }
```

### airline

set below in vimrc
```vim
let g:airline_theme='elly'
```


## Related Projects

- https://github.com/ulwlu/elly-iterm2
- https://github.com/ulwlu/elly-tmux

## Thanks

- [ayu-vim](https://github.com/ayu-theme/ayu-vim) - I use this theme for three years. I used the code as a reference.
- [vim-one](https://github.com/rakr/vim-one) - I used the code of airline autoload as a reference.

## Articles

- Trending #1 in Reddit/r/unixporn: https://www.reddit.com/r/unixporn/comments/jo36fx/rectangle_i_created_a_new_color_theme_which_is/
- Trending #1 in Reddit/r/vimporn: https://www.reddit.com/r/vimporn/comments/jnx2oi/created_new_theme_ellyvim_which_is_nostalgic_and/
