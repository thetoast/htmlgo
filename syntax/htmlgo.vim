"syn include @html $vimruntime/syntax/html.vim
source $vimruntime/syntax/html.vim

syn match goTemplateBar /|/
syn keyword goTemplateFunc and call html index js len not or print printf println urlquery
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
