#!/bin/bash

# Simple Interest Calculation Script

# Function to calculate simple interest
calculate_interest() {
  principal=$1
  rate=$2
  time=$3
  
  # Formula for Simple Interest
  interest=$(echo "$principal * $rate * $time / 100" | bc)
  
  # Print the result
  echo "Principal: $principal"
  echo "Rate: $rate"
  echo "Time: $time"
  echo "Simple Interest: $interest"
}

# Input: principal, rate, time
echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest:"
read rate

echo "Enter the time period (in years):"
read time

# Call the function
calculate_interest $principal $rate $time
