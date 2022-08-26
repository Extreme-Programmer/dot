"❯ vim -N -u ./vimrc ./vimrc
set nocompatible autoread nonumber relativenumber ruler cursorline mouse=a scrolloff=10 noerrorbells encoding=utf-8 hidden nobackup nowritebackup updatetime=50 tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent smartindent smartcase ic foldmethod=indent foldlevel=99 fileencoding=utf-8  fileencodings=utf-8 ttyfast backspace=indent,eol,start  wildmenu mousemodel=popup t_Co=256 guioptions=egmrti gfn=Monospace\ 10 modeline modelines=10 splitright splitbelow showtabline=2 hlsearch


set showcmd ignorecase smartcase showmatch
set guifont=Monaco:h12 guioptions-=T

" set listchars=eol:¬,tab:▸\ ,trail:·
set listchars=tab:▸\ ,trail:·
set list
let mapleader = " " 

nnoremap<silent> <leader>[ :bp!<CR>
nnoremap<silent> <leader>] :bn!<CR>
nnoremap<silent> <leader>x :bd<CR>
nnoremap<silent> <leader>tv <C-w>t<C-w>H
nnoremap<silent> <leader>th <C-w>t<C-w>K
nnoremap<silent> <Leader>vt :vert term<CR>
nnoremap<silent> <Leader>rl :source ~/.vimrc<CR>
nnoremap<silent> <Leader>bl :buffers<CR>
nnoremap<silent> <leader><Left> :vertical resize +5<CR>
nnoremap<silent> <leader><Right> :vertical resize -5<CR>
nnoremap<silent> <leader><Down>  : resize +5<CR>
nnoremap<silent> <leader><Up> : resize -5<CR>

" session management
nnoremap<SILENT> <leader>so :OpenSession<Space>
nnoremap<SILENT> <leader>ss :SaveSession<Space>
nnoremap<SILENT> <leader>sd :DeleteSession<CR>
nnoremap<SILENT> <leader>sc :CloseSession<CR>

nnoremap<silent> <Leader>w :w<CR>
nnoremap<silent> <Leader>x :q<CR>
nnoremap<silent> <Leader>ww :w!<CR>
nnoremap<silent> <Leader>wx :wq<CR>
nnoremap<silent> <Leader>wxx :wq!<CR>
nnoremap<silent> <Leader>wa :wa<CR>
nnoremap<silent> <Leader>waa :wa!<CR>
nnoremap<silent> <Leader>wax :waq<CR>
nnoremap<silent> <Leader>waxx :waq!<CR>
nnoremap<silent> <Leader>ts :echo 'test'<CR>

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

"modes={commandMode:cnoremap, insertMode:inoremap, normalMode:nnoremap, visualMode:vnoremap}
" Remove newbie crutches in Visual Mode
" vnoremap <Down> <Nop>


for mode in ['n', 'v', 'i', 'c']
    for key1 in ['<', '<c-', '<s-']
        for key2 in ['up>', 'down>', 'left>', 'right>']
            exec mode.'noremap' key1.key2 '<nop>'
        endfor
    endfor
endfor

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" move lines with Ctrl + (Shift) +J/K
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi
vnoremap <C-j> :m '>+1<CR>gvgv
vnoremap <C-k> :m '<-2<CR>gvgv

" " Move 1 more lines up or down in normal and visual selection modes.
" nnoremap <C-k> :m .-2<CR>==
" nnoremap <C-j> :m .+1<CR>==
" vnoremap <C-k> :m '<-2<CR>gv=gv
" vnoremap <C-j> :m '>+1<CR>gv=gv


"navigate to the buttom or top of the doc ::> G gg





nnoremap<SILENT> <leader>so :OpenSession<Space>
nnoremap<SILENT><C-j> :


 """""" ----------------------------SHORT-HEYS-FOR-RUN-AND-COMPILE-CODES-ON-VIM------------------------------------------
autocmd filetype cpp        nnoremap <C-c> :w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe <CR>
autocmd filetype c          nnoremap <C-c> :w <bar> !clear && gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out     <CR>
autocmd filetype java       nnoremap <C-c> :w <bar> !clear && javac % && java -enableassertions %:p                  <CR>
autocmd filetype python     nnoremap <C-c> :w <bar> !clear && python3 %                                              <CR>
autocmd filetype javascript nnoremap <C-c> :w <bar> !clear && node %                                                 <CR>
autocmd filetype perl       nnoremap <C-c> :w <bar> !clear && perl %                                                 <CR>
autocmd filetype go         nnoremap <C-c> :w <bar> !clear && go build % && ./%:p                                    <CR>

"include in ~/.vimrc
