#!/bin/bash
# chkmail - Check for new mails every 10 seconds and exit after 1 minute

# Define the mail file path
mail_file="/var/mail/$(whoami)"

# Set the maximum runtime (in seconds)
max_runtime=60
elapsed_time=0

# Loop to check for new mail every 10 seconds
while [ $elapsed_time -lt $max_runtime ]; do
  # Check if new mail exists
  if [ -s "$mail_file" ]; then
    echo "You have new mail!"
  else
    echo "No new mail."
  fi
  
  # Wait for 10 seconds
  sleep 10

  # Increment elapsed time
  elapsed_time=$((elapsed_time + 10))
done

echo "Script finished after $max_runtime seconds."
