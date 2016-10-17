# Kak config
# Author: Yuhuang Hu
# Email : duguyue100@gmail.com


# line numbers
hook global WinCreate .* %{addhl number_lines}

# add brackets highlighting

hook global WinCreate .* %{addhl show_matching}

# colorscheme

colorscheme lucius

# key bindings
map global user q '<esc>:q<ret>'
map global user w '<esc>:w<ret>; :echo -color Information "Written"<ret>'
map global user p '!xclip -o<ret>'
map global user y '<a-|>xclip -i<ret>; :echo -color Information "copied selection to X11 clipboard"<ret>'
map global user v '<esc>:tmux-new-vertical<ret>'
map global user h '<esc>:tmux-new-horizontal<ret>'
map global insert <c-v> '<esc>'
map global insert <c-s> '<esc>:w<ret>i'
map global insert <tab> <c-n>
map global normal <space> '/'
map global normal <ret> 'A<ret><esc>'

# alias
alias global tv tmux-repl-vertical
alias global th tmux-repl-vertical

# Option
set global tabstop     4
set global indentwidth 4

set global scrolloff 1,5

set global makecmd 'make --jobs=8'
set global grepcmd 'ag --filename --column'
