#!/bin/bash

# Prompt the user for a registration key
registration_key=$(osascript -e 'display dialog "Enter your registration key:" default answer "" buttons {"Cancel", "OK"} default button "OK"')

# Extract the user's input
user_input=$(echo "$registration_key" | awk -F, '{print $3}')

# Replace any spaces in the input
user_input="${user_input// /}"

# Check the validity of the registration key (replace with your validation logic)
if [[ "$user_input" == "YOUR_VALID_KEY" ]]; then
    echo "Registration key is valid. Continuing with the installation..."
    exit 0  # Exit with success code (0) to continue installation
else
    echo "Invalid registration key. Aborting installation."
    exit 1  # Exit with non-success code (1) to indicate failure
fi
