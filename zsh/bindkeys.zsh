# Bindkeys

# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a  
bindkey "^[[H"      beginning-of-line                    # home  
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "^[[F"      end-of-line                          # end
bindkey "^[[B"      history-search-forward               # down arrow
bindkey "^[[A"      history-search-backward              # up arrow
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^[[3~"      delete-char                       # del
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b
bindkey "^[^[[D"  backward-word                        # alt left arrow
bindkey "^[^[[C"  forward-word                         # alt rigth arrow
#bindkey -v   # Default to standard vi bindings, regardless of editor string
