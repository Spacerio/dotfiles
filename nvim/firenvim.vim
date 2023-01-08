let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
		 \ 'ignoreKeys': {
			\ 'all': ['<C-Enter>'],
			\ 'normal': ['<C-1>', '<C-2>', '<C-<cr>>']
		\ }
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }
if exists('g:started_by_firenvim')
	nnoremap <C-z> :call firenvim#hide_frame()<CR>
endif
