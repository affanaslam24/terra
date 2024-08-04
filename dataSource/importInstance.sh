#!/bin/bash

# Define the instance IDs
instance_ids=(
  "i-01c0197b4e5e1373d"
  "i-03e083d68eefafa5d"
  "i-06fc9580a479ccaab"
)

# Initialize an index counter
index=1

# Loop over each instance ID and import it
for id in "${instance_ids[@]}"; do
  # Import the instance into Terraform
  terraform import "aws_instance.imported[${index}]" "$id"
  
  # Increment the index for the next instance
  index=$((index + 1))
done
