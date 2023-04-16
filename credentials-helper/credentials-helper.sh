#!/bin/bash

# Helpers
function isInstalled() {
    command -v "$1" > /dev/null 2>&1 || { printf '%s' "$1 is not installed" >&2; exit 1; }
}

function retrieveAccessKeyID() {
    pass "temp/aws/$1/accesskeyid-$2"
}

function retrieveSecretAccessKey() {
    pass "temp/aws/$1/secretaccesskey-$2"
}

function retrieveCredentials() {
    accessKeyID=$(retrieveAccessKeyID $1 $2)
    secretAccessKey=$(retrieveSecretAccessKey $1 $2)
    formatOutputForAWSCLI $accessKeyID $secretAccessKey
}

function formatOutputForAWSCLI() {
    jq --null-input --raw-output \
        --argjson Version 1 \
        --arg AccessKeyId "$1" \
        --arg SecretAccessKey "$2" \
        '$ARGS.named'
}

# Main
function main() {
    # Check Prerequisites
    isInstalled jq
    isInstalled aws
    isInstalled pass

    # Handle credential
    [[ $# -ne 2 ]] && { printf '%s' "Account and Profile expected." >&2; exit 1; }
    retrieveCredentials $1 $2
}

main $@