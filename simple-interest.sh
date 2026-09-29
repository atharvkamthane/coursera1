#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (% per year): " rate
read -p "Enter time period (years): " time

simple_interest=$(awk "BEGIN {printf "%.2f", ($principal * $rate * $time) / 100}")
total_amount=$(awk "BEGIN {printf "%.2f", $principal + $simple_interest}")

echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
