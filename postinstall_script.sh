#!/bin/bash

# This is the modified post-installation script

# Prompt the user with an AppleScript dialog
osascript -e 'tell app "System Events" to display dialog "Please run Python code and then click OK to continue installation."'

# Your Python code goes here
python -c "print('Hello from Python during installation!')"

# Notify the user that Python code has completed
osascript -e 'tell app "System Events" to display dialog "Python code has completed. Click OK to resume installation."'

# Continue with the installation
exit 0
