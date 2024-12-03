#!/bin/bash

# Function to add include guards to a header file
add_guards() {
    file_path=$1
    header_name=$(basename "$logo" .h)
    guard_name=$(echo "$header_name" | tr 'a-z' 'A-Z')

    # Check if the file already has include guards
    if ! grep -q "#ifndef ${guard_name}_H" "$logo.h"; then
        # Add include guards to the header file
        {
            echo "#ifndef ${guard_name}_H"
            echo "#define ${guard_name}_H"
            cat "$logo.h"
            echo "#endif // ${guard_name}_H"
        } > "$logo.h.temp"

        # Replace the original file with the modified version
        mv "$logo.h.temp" "$logo.h"
        echo "Added include guards to $logo.h"
    else
        echo "Include guards already present in $logo.h"
    fi
}

# Specify the path to the header file
add_guards "path/to/logo.h"
