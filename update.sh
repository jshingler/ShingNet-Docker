#!/bin/bash

# Define color codes
LAVENDER="\033[38;5;183m"
RESET="\033[0m"

# Helper function for section headers
print_section() {
  echo -e "${LAVENDER}========================================${RESET}"
  echo -e "${LAVENDER}Updating: $1${RESET}"
  echo -e "${LAVENDER}========================================${RESET}"
}

# Ollama Models
print_section "Ollama Models"
cd ~/bin && ./ollama-update-models.sh

# Update N8N
print_section "N8N"
cd ~/n8n && ./update.sh

# Update Cloudflared
print_section "Cloudflared"
cd ~/docker/cloudflare && ./update.sh

# Update Open-WebUI
print_section "Open WebUI"
cd ~/docker/open-webui && ./update.sh

# Update SRE Tooling
print_section "SRE Tooling"
cd ~/docker/sre && ./update.sh

# Update PGVector
print_section "PGVector"
cd ~/docker/pgvector && ./update.sh

# Update OpenLDAP
print_section "OpenLDAP"
cd ~/docker/openldap && ./update.sh

# Update Keycloak
print_section "Keycloak"
cd ~/docker/keycloak && ./update.sh

# Update TTS
print_section "TTS"
cd ~/docker/kokoro && ./update.sh

# Return to docker root
cd ~/docker

