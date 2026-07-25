#!/bin/bash
# OpenCode Cyber Agent Setup Script
# Run this on new Kali Linux to setup bug bounty agent

set -e

echo "[*] Setting up OpenCode Cyber Agent..."

# Check if opencode is installed
if ! command -v opencode &> /dev/null; then
    echo "[!] OpenCode not found. Install it first:"
    echo "    curl -fsSL https://opencode.ai/install.sh | bash"
    exit 1
fi

# Create directories
echo "[*] Creating directories..."
mkdir -p ~/.opencode/agents
mkdir -p ~/.opencode/skills/bugbounty

# Copy files
echo "[*] Installing agent and skill..."
cp .opencode/agents/bugbounty.md ~/.opencode/agents/
cp .opencode/skills/bugbounty/SKILL.md ~/.opencode/skills/bugbounty/
cp opencode.json ~/

echo "[+] Setup complete!"
echo "[*] Restart opencode to activate the cyber agent"
echo "[*] Use @cyber in chat to access the skill reference"
echo ""
echo "Features:"
echo "  - Zero trace OPSEC (VPN/Tor/proxychains enforced)"
echo "  - All permissions enabled (no prompts)"
echo "  - Default agent on startup"
echo "  - Custom tool creation on the fly"
echo "  - Live WAF bypass generation"
echo "  - 49 sections covering everything"
