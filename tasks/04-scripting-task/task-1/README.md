# 4. Scripting Task

## Task 1: Instructions

**Step 1:** Create a shell script to print the HTTP error code of ***guvi.in*** & print, the success/failure message based on the error code response.

```bash
#!/bin/bash

# URL to be checked
URL="$1"

# Use curl to get the HTTP status code
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

# Print the HTTP status code
echo "HTTP Status Code: $HTTP_STATUS"

# Check the status code and print appropriate message
if [[ "$HTTP_STATUS" -ge 200 && "$HTTP_STATUS" -lt 300 ]]; then
    echo "Success: The request was successful."
elif [[ "$HTTP_STATUS" -ge 400 && "$HTTP_STATUS" -lt 500 ]]; then
    echo "Client Error: There seems to be an issue with the request (e.g., Not Found, Bad Request)."
elif [[ "$HTTP_STATUS" -ge 500 && "$HTTP_STATUS" -lt 600 ]]; then
    echo "Server Error: The server encountered an error (e.g., Internal Server Error)."
else
    echo "Failure: Something unexpected occurred."
fi
```

**Step 2:** Make the script executable.

```bash
chmod +x check_http_status.sh
```

**Step 3:** Run the script with arguments.

```bash
./check_http_status.sh https://guvi.in
```

![Result]()
