#!/bin/bash

# Check if astyle is installed
if ! command -v astyle &> /dev/null; then
    echo "astyle is not installed. Do you want to install it? (y/n)"
    read install_astyle

    if [ "$install_astyle" == "y" ]; then
        # Install astyle
        echo "Installing astyle..."
        sudo apt-get install -y astyle
        echo "astyle installed."
    else
        echo "Please install astyle before running this script."
        exit 1
    fi
fi

# Prompt the user if they want to install the script
echo "Do you want to install this script? (y/n)"
read install_script

if [ "$install_script" == "y" ]; then
    # Install the script
    echo "Installing script..."
    sudo cp bettyformatter.sh /usr/local/bin/bettyformatter
    sudo chmod +x /usr/local/bin/bettyformatter
    echo "Script installed. You can now run it by typing 'bettyformatter' in the terminal."
fi

# Display a message to the user
echo "Please enter the name of the input file:"

# Read the user's input
read input_file

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File not found"
    exit 1
fi

# Call astyle to convert the input file to Betty style
astyle --style=kr --indent=spaces=4 --indent-labels --indent-col1-comments --pad-oper --pad-header --unpad-paren --align-pointer=type --align-reference=type --break-after-logical --suffix=none "$input_file"

echo "Code converted to Betty style"
