
#!bin/bash

random_number=$((RANDOM % 100))

echo "Random Number: $random_number"

logger -p user.info "Random Number: $random_number"
