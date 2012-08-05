#!/bin/bash

function startTests {
    echo "PlaygroundUnit 0.0.1 by Igor Wiedler."
    echo
}

function endTests {
    echo
    echo
}

function assertEquals {
    if [ "$1" = "$2" ]; then
        echo -n .
    else
        echo "Assertion failed:"
        echo "--- Expected"
        echo "+++ Actual"
        echo "- $1"
        echo "+ $2"

        endTests
        exit 1
    fi
}

startTests

assertEquals "Nothing interesting to see here, move on." "$(cat README.md)"
assertEquals "this file is very useless" "$(cat useless-file)"

endTests
