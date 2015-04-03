" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"syn include @html $vimruntime/syntax/html.vim
if version < 600
  so <sfile>:p:h/html.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
endif

syn match goTemplateBar /|/
syn keyword goTemplateFunc and call html index js len not or print printf println urlquery eq ne lt le gt ge
syn keyword goTemplateKeyword if else end range template with define
syntax region goRegionError start="{{" end="}}"
syntax region goTemplateComment start="{{/\*" end="\*/}}"

syn cluster goTemplate contains=goTemplateBar,goTemplateFunc,goTemplateKeyword,goTemplateComment
syntax region goRegion matchgroup=Statement start="{{" end="}}" contains=@goTemplate transparent oneline

high link goTemplateBar Special
high link goTemplateFunc Function
high link goTemplateKeyword Keyword
high link goTemplateComment Comment
high link goRegionError Error
