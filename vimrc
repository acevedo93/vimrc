set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=2
set expandtab
set relativenumber
set smartindent
set nu
set belloff=all
set nobackup
set undodir=~/.vim/undodir
set undofile
set encoding=utf-8
set incsearch
set showmatch
set mouse=a
set noswapfile
set syntax=on

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin( '~/.vim/plugged')


Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'



let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-styled-components',
  \ 'coc-flutter'
  \ ]

let mapleader= ' '

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

map <Leader>p :Files!<CR>
map <Leader>b :Buffers<CR>
map <Leader>colors :Colors<CR>


nmap <Leader>t :TestNearest<CR>
nmap <Leader>T :TestFile<CR>
nmap <Leader>TT :TestSuite<CR>

nmap <Leader>f <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
map <Leader>BB :Buffers<cr>
nnoremap <Leader>kp :let @*=expand("%")<CR>

inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap [ []<ESC>i


" Flutter


nnoremap <leader>rf :FlutterRun -d all<cr>
nnoremap <leader>rei :FlutterEmulatorsLaunch apple<cr>
nnoremap <leader>rea :FlutterEmulatorsLaunch  pixel4<cr>
nnoremap <leader>rfc :FlutterRun -d chrome<cr>


nnoremap <leader>rfq :FlutterQuit<cr>
nnoremap <leader>rfr :FlutterHotReload<cr>
nnoremap <leader>rfh :FlutterHotRestart<cr>
nnoremap <leader>rfv :FlutterVisualDebug<cr>
nnoremap <leader>tf :FlutterTab <cr>

let g:prettier#autoformat = 1
call plug#end()



colorscheme gruvbox 
