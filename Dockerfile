# Use a small Linux distribution like Alpine as the base image
FROM alpine:latest

# Install SSH client
RUN apk add --no-cache openssh-client

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint script to run when the container starts
ENTRYPOINT ["sh", "/entrypoint.sh"]
