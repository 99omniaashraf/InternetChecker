#!/bin/bash

LOG_FILE="logs/connection.log"

if [ ! -d "logs" ]; then
    mkdir "logs"
fi

if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

check_connection() {
    echo "Checking internet connection..."

    if ping -c 1 google.com &> /dev/null; then
        MESSAGE="Internet is Working"
        ICON="🟢"
    else
        if ping -c 1 8.8.8.8 &> /dev/null; then
            MESSAGE="DNS is Working"
            ICON="🟡"
        else
            MESSAGE="No Internet Connection"
            ICON="🔴"
        fi
    fi

    echo "$(date): $MESSAGE" | tee -a "$LOG_FILE"

    notify-send -i "$ICON" "Internet Checker" "$MESSAGE"
}

check_connection