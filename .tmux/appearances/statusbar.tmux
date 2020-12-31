# Clock
setw -g clock-mode-colour colour7

# Styles
setw -g mode-style 'fg=colour0 bg=colour0 bold'
set-window-option -g mode-style 'fg=colour0 bg=colour153'
set -g status-position bottom
set -g status-justify left
set -g status-right '#{prefix_highlight}  #(whoami)@#(hostname)  %a %b %d %H:%M' 
set -g status-style 'bg=colour240 fg=colour14 dim'
setw -g window-status-current-style 'fg=colour15 bg=colour245 bold'
setw -g window-status-current-format ' #I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F '
