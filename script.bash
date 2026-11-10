#!/bin/bash

string=$1

readarray -t array <<< "$string"

regex_ipv4="\|[[:space:]]*([0-9.]+)[[:space:]]*\|[[:space:]]*([0-9.]+)[[:space:]]*\|[[:space:]]*([0-9.]+)[[:space:]]*\|.*"
regex_ipv6="\|[[:space:]]*([0-9A-Fa-f:./]+)[[:space:]]*\|[[:space:]]*([0-9A-Fa-f:.]+)[/0-9]*[[:space:]]*\|.*"

regex_ipv4_local="0.0.0.0"
regex_ipv6_local="FE80::1"

for input in "${array[@]}"; do
    if [[ $input =~ $regex_ipv4 ]]; then
        if [[ "${BASH_REMATCH[3]}" != "$regex_ipv4_local" ]]; then
            echo -e "ip route ${BASH_REMATCH[1]} ${BASH_REMATCH[2]} ${BASH_REMATCH[3]}"
        fi
    elif [[ $input =~ $regex_ipv6 ]]; then
        if [[ "${BASH_REMATCH[2]}" != "$regex_ipv6_local" ]]; then
            echo -e "ipv6 route ${BASH_REMATCH[1]} ${BASH_REMATCH[2]}"
        fi
    else
        echo "$input"
    fi
done
