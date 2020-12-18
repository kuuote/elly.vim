## elly.vim

*elly.vim* is a nostalgic and brown-based Vim color theme.

<img alt="elly iterm2" src="https://user-images.githubusercontent.com/41639488/98157819-3f36ca00-1f1d-11eb-962c-17f33996bd48.png">

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/98123673-814c1580-1ef5-11eb-8520-06af6404e738.png">

## Installation

1. Add `Plug 'ulwlu/elly.vim'` in your .vimrc within vim-plug's loading function.
2. Run `:PlugInstall`
3. Activate by `colorscheme elly`
4. Use `set termguicolors` as well

## Plugins

elly.vim is compatiable with Nerdtree, Airline, Lightline, coc.nvim, fzf-preview, and etc.

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/100799586-a5553500-3468-11eb-99a0-7254a606229f.png">

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/101771605-8bcd8080-3b2d-11eb-9711-3a34ad8f3bfd.png">

![elly.vim](https://user-images.githubusercontent.com/41639488/100526196-fc110380-3209-11eb-913a-22adfa3c19ab.png)

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

### coc-git

set below in coc-settings.json
```json
	"git.addedSign.hlGroup": "CocDiffAdd",
	"git.changedSign.hlGroup": "CocDiffChange",
	"git.removedSign.hlGroup": "CocDiffDelete",
	"git.topRemovedSign.hlGroup": "CocDiffDelete",
	"git.changeRemovedSign.hlGroup": "CocDiffDelete",
```

## Related Projects

- https://github.com/ulwlu/elly-iterm2
- https://github.com/ulwlu/elly-tmux
- https://github.com/ulwlu/elly-simple-bar

## Thanks

- [ayu-vim](https://github.com/ayu-theme/ayu-vim) - I use this theme for three years. I used the code as a reference.
- [vim-one](https://github.com/rakr/vim-one) - I used the code of airline autoload as a reference.

## Articles

- Trending #1 in Reddit/r/unixporn: https://www.reddit.com/r/unixporn/comments/jo36fx/rectangle_i_created_a_new_color_theme_which_is/
- Trending #1 in Reddit/r/vim: https://www.reddit.com/r/vim/comments/k2quxw/created_a_new_theme_ellyvim_which_is_brown_and
