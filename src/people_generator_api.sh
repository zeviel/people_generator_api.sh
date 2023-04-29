#!/bin/bash

api="https://api.peoplegeneratorapi.live"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function generate_person() {
    # 1 - gender: (string): <male, female, or random - default: random>
    # 2 - country: (string): <two-letter country code - default: random>
    # 3 - age: (integer): <age - default: random>
    curl --request GET \
        --url "$api/person?gender=${1:-random}&country=${2:-random}&age=${3:-random}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function generate_address() {
    # 1 - country: (string): <two-letter country code - default: random>
    curl --request GET \
        --url "$api/address?country=${1:-random}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function generate_life_story() {
    curl --request GET \
        --url "$api/lifestory" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
