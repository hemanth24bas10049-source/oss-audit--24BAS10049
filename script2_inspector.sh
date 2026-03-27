#!/bin/bash
# Script 2: FOSS Package Inspector (Fail-Safe)

PACKAGE="vlc"

echo "Step 1: Checking system database for $PACKAGE..."

# We use 'dpkg' because it is a background tool and never "hangs"
if dpkg -s "$PACKAGE" > /dev/null 2>&1; then
    echo "Step 2: SUCCESS! $PACKAGE is installed."
    
    # Grab version and license info from the system files
    VERSION=$(dpkg -s "$PACKAGE" | grep "^Version:" | cut -d' ' -f2)
    SUMMARY=$(dpkg -s "$PACKAGE" | grep "^Description:" | cut -d' ' -f2-10)
    
    echo "Version Found: $VERSION"
    echo "Summary: $SUMMARY..."
else
    echo "Step 2: ERROR! $PACKAGE is not found in the system."
    echo "Please run: sudo apt install vlc -y"
    exit 1
fi

echo "Step 3: Philosophy Note"
case $PACKAGE in
    vlc)
        echo "Philosophy: VLC represents the 'Free as in Freedom' model."
        ;;
    *)
        echo "Philosophy: Community-driven open source software."
        ;;
esac