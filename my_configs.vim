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

