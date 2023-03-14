#!/bin/bash

# Check that the script was called with two arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <filename> <command>"
  exit 1
fi

# Extract the filename and command from the arguments
filename="$1"
command="$2"

# Create a new file with the specified filename
touch "$filename"

# Add shebang and command to the file
echo "#!/bin/bash" >> "$filename"
echo "$command" >> "$filename"

# Make the file executable
chmod u+x "$filename"

