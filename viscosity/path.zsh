###
# Manage Viscosity VPN connections
# https://www.sparklabs.com/support/kb/article/controlling-viscosity-with-applescript-mac/
###

if test "$(uname)" = "Darwin"; then
    viscosity-connect () {
        if [ -z "$1" ]; then
            echo "Must provide a Viscosity connection name"
        else
            osascript -e "tell application \"Viscosity\" to connect \"$1\""
        fi
    }

    viscosity-disconnect () {
        if [ -z "$1" ]; then
            echo "Must provide a Viscosity connection name"
        else
            osascript -e "tell application \"Viscosity\" to disconnect \"$1\""
        fi
    }

    viscosity-disconnect-all () {
        osascript -e "tell application \"Viscosity\" to disconnectall"
    }
fi
