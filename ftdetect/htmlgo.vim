if did_filetype()
    finish
endif

au BufRead,BufNewFile *.htmlgo setfiletype htmlgo
