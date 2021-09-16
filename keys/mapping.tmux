###############################################################
# => General
###############################################################
# Copy and patse
bind-key P paste-buffer
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys -X copy-selection
bind-key -T copy-mode-vi r send-keys -X rectangle-toggle

# Resize panes
bind-key -r h resize-pane -L 3
bind-key -r j resize-pane -D 3
bind-key -r k resize-pane -U 3
bind-key -r l resize-pane -R 3

###############################################################
# => Copy mode (vim style)
###############################################################
# vim keys in copy and choose mode
set-window-option -g mode-keys vi

# copying selection vim style
# bind-key Escape copy-mode			# enter copy mode; default [
bind-key p paste-buffer				# paste; (default hotkey: ] )
bind-key P choose-buffer 			# tmux clipboard history
bind-key + delete-buffer \; display-message "Deleted current tmux clipboard history"

# Send To Tmux Clipboard or System Clipboard
bind-key < run-shell "tmux set-buffer -- \"$(xsel -o -b)\"" \; display-message "Copy to tmux clipboard"
bind-key > run-shell 'tmux show-buffer | xsel -i -b' \; display-message "Copy to system clipboard"

# vim copy mode rebinds for (tmux 2.4+)
# Note: rectangle-toggle (aka Visual Block Mode) > hit v then C-v to trigger it
if-shell -b '[ "$(echo "$TMUX_VERSION >= 2.4" | bc)" = 1 ]' \
    'bind-key -T copy-mode-vi v send-keys -X begin-selection; \
    bind-key -T copy-mode-vi V send-keys -X select-line; \
    bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle; \
    bind-key -T choice-mode-vi h send-keys -X tree-collapse ; \
    bind-key -T choice-mode-vi l send-keys -X tree-expand ; \
    bind-key -T choice-mode-vi H send-keys -X tree-collapse-all ; \
    bind-key -T choice-mode-vi L send-keys -X tree-expand-all ; \
    bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe "xclip -in -selection clipboard"; \
    bind-key -T copy-mode-vi y send-keys -X copy-pipe "xclip -in -selection clipboard"'

# vim copy mode rebinds for (tmux 2.3 or lower)
if-shell -b '[ "$(echo "$TMUX_VERSION < 2.4" | bc)" = 1 ]' \
    'bind-key -t vi-copy v begin-selection; \
    bind-key -t vi-copy V select-line; \
    bind-key -t vi-copy C-v rectangle-toggle; \
    bind-key -t vi-choice h tree-collapse; \
    bind-key -t vi-choice l tree-expand; \
    bind-key -t vi-choice H tree-collapse-all; \
    bind-key -t vi-choice L tree-expand-all; \
    bind-key -t vi-copy MouseDragEnd1Pane copy-pipe "xclip -in -selection clipboard"; \
    bind-key -t vi-copy y copy-pipe "xclip -in -selection clipboard"'


###############################################################
# => Moving around, tabs, windows and buffers
###############################################################
# Jump across panes --> moved to vim-tmux-navigator pluging
bind-key -n S-left select-pane -L
bind-key -n S-down select-pane -D
bind-key -n S-up select-pane -U
bind-key -n S-right select-pane -R
