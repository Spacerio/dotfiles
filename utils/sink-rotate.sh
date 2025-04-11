#!/usr/bin/env bash

# Get the current default sink
current_sink=$(pactl info | grep "Default Sink" | awk '{print $3}')

# Get the list of all sinks
sinks=($(pactl list short sinks | awk '{print $2}'))

# Find the index of the current sink
for i in "${!sinks[@]}"; do
  if [[ "${sinks[$i]}" == "$current_sink" ]]; then
    current_index=$i
    break
  fi
done

# Calculate the index of the next sink (wrap around using modulo)
next_index=$(( (current_index + 1) % ${#sinks[@]} ))
next_sink="${sinks[$next_index]}"

# Set the new default sink
pactl set-default-sink "$next_sink"

# Move all current playing streams to the new sink
for input in $(pactl list short sink-inputs | awk '{print $1}'); do
  pactl move-sink-input "$input" "$next_sink"
done

echo "Switched default sink to: $next_sink"
