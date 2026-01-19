#!/bin/bash

current_profile=$(powerprofilesctl get)
    
# Determine next profile in cycle
case "$current_profile" in
    "power-saver")
        perc="󰌪"
        ;;
    "balanced")
        perc="󰑲"
        ;;
    "performance")
        perc=""
        ;;
    *)
        # If unknown profile, default to balanced
        perc="󰑲"
        ;;
esac

echo '{"text": "'"${perc}"'"}'
