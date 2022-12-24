# 'ls' after every 'cd'
if ! (( $chpwd_functions[(I)chpwd_cdls] )); then
    chpwd_functions+=(chpwd_cdls)
fi

function chpwd_cdls() {
    if [[ -o interactive ]]; then
        emulate -L zsh
        exa -la --icons --group-directories-first        
    fi
}
