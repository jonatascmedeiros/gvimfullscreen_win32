function! ToggleFullscreen()
    if has("gui_running")
        call s:toggle_fullscreen()
    endif
endfunction

function! s:get_lib_path()
    if has('win64')
        let lib_path = 'lib\x64\gvimfullscreen_64.dll'
    elseif has('win32')
        let lib_path = 'lib\x86\gvimfullscreen.dll'
    else
        return ''
    endif
    return get(globpath(&rtp, lib_path, 0, 1), 0, '')
endfunction

function! s:toggle_fullscreen()
    let lib_path = s:get_lib_path()
    if !empty(lib_path)
        call libcallnr(lib_path, "ToggleFullScreen", 0)
    endif
endfunction
