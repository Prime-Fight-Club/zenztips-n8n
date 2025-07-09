# Use the official n8n image as base
FROM n8nio/n8n:latest

# Expose the standard n8n port
EXPOSE 5678

# Use the built‑in entrypoint script so that n8n runs correctly
ENTRYPOINT ["tini", "--", "/usr/local/bin/docker-entrypoint.sh"]

# Default command to start n8n
CMD ["n8n"]
