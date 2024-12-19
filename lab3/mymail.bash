#!/bin/bash
# mymail - Send a mail to all users in the system

# Define the path to the mtemplate file
mtemplate="$HOME/mtemplate"

# Step 1: Check if the mtemplate file exists
if [ -e "$mtemplate" ]; then
    echo "mtemplate file found. Using existing template."
else
    echo "mtemplate file not found. Creating it now..."
    # Step 2: Create the mtemplate file and add a default message
    echo "Hello dear, how are you? This is a test notification." > "$mtemplate"
    echo "mtemplate file created with a default message."
fi

# Step 3: Read the email body from the mtemplate file
mail_body=$(cat "$mtemplate")

# Step 4: Loop through all users in the system
for user in $(cut -d: -f1 /etc/passwd); do
        # Send the email to the user
        echo "$mail_body" | mail -s "Notification" "$user"
done

echo "Mail sent to all users in the system."
