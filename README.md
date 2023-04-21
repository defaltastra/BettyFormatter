# Convert C Code to Betty Style

This script converts C code to Betty style using `astyle`.

## Prerequisites

Before running the script, make sure you have `astyle` installed. You can install `astyle` on Ubuntu/Debian by running the following command:

sudo apt-get install astyle



## Installation

To install the script, follow these steps:

1. Clone the repository to your local machine or download the `convert_to_betty.sh` file.
2. Open a terminal and navigate to the directory where the script is located.
3. Make the script executable by running the following command:

chmod +x convert_to_betty.sh

Copy

4. Run the script by running the following command:

./convert_to_betty.sh



## Usage

When you run the script, it will prompt you to enter the name of the input file. Once you enter the file name, the script will check if the file exists, and then convert the code in the input file to Betty style using `astyle`.

If `astyle` is not installed, the script will prompt you to install it. If you choose to install `astyle`, the script will automatically install it using `sudo apt-get install -y astyle`.

If you choose to install the script, the script will be installed in your system by copying itself to `/usr/local/bin/convert_to_betty` and making it executable. You can then run the script by typing `convert_to_betty` in the terminal.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
