#!/bin/bash               

sum=0                     # Start a running total at 0

while true; do            # Begin an endless loop (we'll break out when you type 'stop')
    read -p "Enter a number (or type stop): " input   # Ask you for input and store it in 'input'

    if [[ "$input" == "stop" ]]; then   # If you typed exactly: stop
        break                           # ...leave the loop
    elif [[ "$input" =~ ^-?[0-9]+$ ]]; then  # Else, if input looks like an integer (optional minus, digits)
        sum=$((sum + input))                # Add it to the running total
    else
        echo "Not a number!"                # Anything else is invalid; tell you and keep going
    fi
done

echo "Total sum: $sum"  # After you type stop, print the final total
