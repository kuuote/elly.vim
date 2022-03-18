## elly.vim

*elly.vim* is a nostalgic and brown-based Vim color theme.

<img alt="elly iterm2" src="https://user-images.githubusercontent.com/41639488/98157819-3f36ca00-1f1d-11eb-962c-17f33996bd48.png">

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/98123673-814c1580-1ef5-11eb-8520-06af6404e738.png">

<img alt="elly.vim" src="https://user-images.githubusercontent.com/41639488/124696330-cced0e00-df1f-11eb-8059-a16a74c24777.png">

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

- [elly-iTerm2](https://github.com/ulwlu/elly-iterm2)
- [elly-VSCode](https://github.com/ulwlu/elly-vscode)
- [elly-tmux](https://github.com/ulwlu/elly-tmux)
- [elly-kitty](https://github.com/ulwlu/elly-kitty) - This is made by [Benoit Pingris](https://github.com/BenoitPingris).
- [elly-simple-bar](https://github.com/ulwlu/elly-simple-bar)
- [elly-chrome](https://github.com/ulwlu/elly-chrome)
- [tilix-elly](https://github.com/HexHelix-xx/tilix-elly) - This is made by [Nirna Kajanovszki](https://github.com/HexHelix-xx).
- [hyper-elly](https://github.com/ciscohack/hyper-elly) - This is maintained by [ciscohack](https://github.com/ciscohack).

## Warning

If your terminal becomes like below,

![elly.vim](https://user-images.githubusercontent.com/41639488/118059208-ef085b00-b3ca-11eb-8233-d2940c9e6dc3.png)

This means your terminal doesn't support gui colors. In this case, please set below in vimrc before you set `colorscheme elly`.

```vim
let g:elly_termmode="cterm"
```

If you found some highlighting strange, please execute the command below and paste the result in issue.
```vim
:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") ."> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
```

## Thanks

- [ayu-vim](https://github.com/ayu-theme/ayu-vim) - I use this theme for three years. I used the code as a reference.
- [vim-one](https://github.com/rakr/vim-one) - I used the code of airline autoload as a reference.

## Articles

- Trending #1 in Reddit/r/unixporn: [link](https://www.reddit.com/r/unixporn/comments/jo36fx/rectangle_i_created_a_new_color_theme_which_is/)
- Trending #1 in Reddit/r/vim: [link](https://www.reddit.com/r/vim/comments/k2quxw/created_a_new_theme_ellyvim_which_is_brown_and)
