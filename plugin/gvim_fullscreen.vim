function! ToggleFullscreen()
    if has("gui_running")
        call s:toggle_fullscreen()
    endif
endfunction

function! s:dll_is_installed(lib_path)
    let dll_installed = len(split(globpath(&rtp, a:lib_path), '\n'))
    return dll_installed && 1
endfunction

function! s:toggle_fullscreen()
    if has("win32")
        let lib_path = "lib\x86\gvimfullscreen.dll"
        if s:dll_is_installed(lib_path)
            let $GVIM_FULLSCREEN_DLL_PATH = split(globpath(&rtp, lib_path))[0]
            call libcallnr($GVIM_FULLSCREEN_DLL_PATH, "ToggleFullScreen", 0)
        endif
    endif
endfunction
