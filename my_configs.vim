set nu "显示行号
set cursorline "显示光标行
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim

 if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_left = 1 
nnoremap <F3> :TagbarToggle<CR>

nmap <F4> :SrcExplToggle<CR>
let g:Srcexpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100
 " // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"
 " // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_pluginList = [ 
                        \ "__Tag_List__",
                    \ "_NERD_tree_"
                                     \]                                                                                                                                        
set tags=tags;/ "搜索上一级建立的tag
