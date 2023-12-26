#!/bin/bash

# Function to generate queries using curl and POST method
generate_query() {
    local url="$1"
    local data1="$2"
    local data2="$3"
    response=$(curl -X POST -d "$data1" -d "$data2" "$url")
    
    curl -X POST -d "verb=get_dns&profile=alpine&pqp=qqcoisa" 127.0.0.1:8000

    # Add code to process the response as needed
    echo "Dados recebidos da consulta:"
    echo "${response}"
}

# Usage example:
# generate_query "https://example.com/api" "param1=value1&param2=value2"


generate_query "http://127.0.0.1:8000/" "param1=value1&param2=value2" "param3=value3&param4=value4"