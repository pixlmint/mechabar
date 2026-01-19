#!/bin/bash

current_profile=$(powerprofilesctl get)
    
# Determine next profile in cycle
case "$current_profile" in
    "power-saver")
        new_profile="balanced"
        ;;
    "balanced")
        new_profile="performance"
        ;;
    "performance")
        new_profile="power-saver"
        ;;
    *)
        # If unknown profile, default to balanced
        new_profile="balanced"
        ;;
esac

# Set the new profile
powerprofilesctl set "$new_profile"
