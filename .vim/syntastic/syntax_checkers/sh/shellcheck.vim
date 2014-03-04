"============================================================================
"File:        shellcheck.vim
"Description: Shell script syntax/style checking plugin for syntastic.vim
"============================================================================

if exists("g:loaded_syntastic_sh_shellcheck_checker")
    finish
endif
let g:loaded_syntastic_sh_shellcheck_checker = 1

function! SyntaxCheckers_sh_shellcheck_GetLocList() dict
    let makeprg = self.makeprgBuild({ 'args': '-f gcc' })

    let errorformat =
        \ '%f:%l:%v: %trror: %m,' .
        \ '%f:%l:%v: %tarning: %m,' .
        \ '%f:%l:%v: %tote: %m'

    let loclist = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat,
        \ 'returns': [0, 1] })

    for e in loclist
        if e['type'] ==? 'n'
            let e['type'] = 'w'
            let e['subtype'] = 'Style'
        endif
    endfor

    return loclist
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'sh',
    \ 'name': 'shellcheck' })