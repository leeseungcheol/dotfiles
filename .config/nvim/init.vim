"call plug#begin("~/.vim/plugged")
call plug#begin()

Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'preservim/nerdtree'
Plug 'yegappan/taglist'

call plug#end()

syntax on
"color dracula
colorscheme gruvbox
set background=dark

set smartindent
set nu
set nowrap
set smartcase
"set tags=./tags,tags,$HOME/work/linux/tags
set tags=./tags
set nocscopeverbose
"cs add $HOME/work/linux/cscope.out
if has("cscope")
	if filereadable("cscope.out")
		cs add ./cscope.out
	else
		echo "not reable!"
	endif
	set csto=0
	set cst
endif

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set updatetime=50

augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
autocmd BufLeave,FocusLost,InsertEnter,WinLeave	  * if &nu | set nornu | endif
augroup END

set number relativenumber
set laststatus=2

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>

nnoremap <silent> <C-n> :TlistToggle<CR>
