# HMLjk: move easily and freely through a markdown document.

`Mind` __A Header is a Section__: A Document is divided into many sections by Markdown Header. so we need move cursor among the sections. _neither `j`/`k` move line by line, nor `H`/`M`/`L` move screen by screen_;
we need move **section by section**. so, I write this little project. maybe it can help you, too.
_Let we move easily and freely through a markdown document_.

> HMLjk.vim is inspired by **vim `H` `M` `L`** key function.

`理念` __标题即区间__: 标记标题将一篇文档 分隔成*一个又一个*的区间段。我们通常需要 在这些区间段中移动光标，_而不是按`j`/`k`一行一行 亦或是按`H`/`M`/`L`整屏整屏 地移动光标_；
我们需要的是**逐段逐段地**移动光标。所以，诞生了这个小插件。或许，同样也能帮助到 经常看标记文档的你。
_让我们在这些区间丛林中自由跳跃吧！_

![count](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwishrivers%2FHMLjk.vim&count_bg=%23303030&title_bg=%23FFFFFF&icon=github.svg&icon_color=%23303030&title=.&edge_flat=false)


## Installation
Use vim 8+ plugins:
```bash
$ [ ! -d ~/.vim/pack/plugins/start ] && mkdir -p ~/.vim/pack/plugins/start
$ git clone https://github.com/wishrivers/HMLjk.vim.git ~/.vim/pack/plugins/start/HMLjk
```

## Usage
`gh` move cursor to the **begin** of this header section.
`gm` move cursor to the **middle** of this header section.
`gl` move cursor to the **end** of this header section.
`gj` move cursor to the **next** header section.
`gk` move cursor to the **prev** header section.

u can remap the keys in `~/.vimrc`:
```bash
nnoremap <leader>h :call hmljk#move('H')<cr>
nnoremap <leader>m :call hmljk#move('M')<cr>
nnoremap <leader>l :call hmljk#move('L')<cr>
nnoremap <leader>j :call hmljk#move('J')<cr>
nnoremap <leader>k :call hmljk#move('K')<cr>
```
