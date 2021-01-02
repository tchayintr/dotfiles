## General 
# Set update interval (second)
set-option -g status-interval 1

# Set the status formats/locations
set-option -g status-position 'bottom'
set-option -g status-justify 'left'

# Specify the background (bg) and text (fg) colours status line. 
set-option -g status-style 'bg=colour240 fg=colour14 dim'

# Specify the maximum length of # status-left. 
set-option -g status-left-length 20

# Specify the maximum length of # status-right. 
set-option -g status-right-length 60

# Set right-status item
set-option -g status-right '#{prefix_highlight}  #(whoami)@#H  %a %b %d %H:%M'

## Windows                                                  
set-window-option -g mode-style 'fg=colour0 bg=colour153 bold'
set-window-option -g window-status-current-style 'fg=colour15 bg=colour245 bold'
set-window-option -g window-status-current-format '#I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F'

# Specify the window-status format
set-window-option -g window-status-format '#I:#W#F'

# Specify the current window-status format
set-window-option -g window-status-current-format '#I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F'

# Set clock colour                                                                                      
set-window-option -g clock-mode-colour 'colour7'   

# Clock
setw -g clock-mode-colour 'colour7'
