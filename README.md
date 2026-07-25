# OpenCode Cyber Agent

Universal red team & bug bounty agent for OpenCode.

## Features

- **Zero Trace OPSEC** - VPN/Tor/proxychains enforced, no real IP leaks
- **All Permissions** - No prompts, full access to bash, read, edit
- **Default Agent** - Auto-activates on startup
- **Custom Tool Creation** - Creates scripts/tools on the fly
- **Live Bypass Generation** - Real-time WAF/filter bypass payloads
- **49 Sections** - Everything from recon to post-exploitation

## Quick Setup

```bash
# On new Kali Linux
git clone https://github.com/YOUR_USERNAME/opencode-cyber-agent.git
cd opencode-cyber-agent
chmod +x setup.sh
./setup.sh
```

## Manual Setup

```bash
# Copy files to opencode directories
mkdir -p ~/.opencode/agents ~/.opencode/skills/bugbounty
cp .opencode/agents/bugbounty.md ~/.opencode/agents/
cp .opencode/skills/bugbounty/SKILL.md ~/.opencode/skills/bugbounty/
cp opencode.json ~/
```

## Usage

1. Restart opencode
2. Agent auto-activates (bugbounty mode)
3. Use `@cyber` in chat for skill reference
4. All tools run through VPN/Tor (zero trace)

## What's Included

- Recon (subdomain enum, port scan, directory brute, OSINT)
- Exploitation (SQLi, XSS, SSRF, XXE, SSTI, IDOR, CSRF, etc.)
- WAF Bypass (CloudFlare, Akamai, ModSecurity, AWS)
- API Security (REST, GraphQL, WebSocket)
- Cloud (AWS, GCP, Azure, Docker, Kubernetes)
- Mobile (Android, iOS)
- Wireless (WiFi, Bluetooth)
- Post-Exploitation (shells, privesc, lateral movement)
- Forensics (file, memory, network)
- Reverse Engineering
- Custom tool creation
- Live bypass generation

## OPSEC Rules

- All traffic through VPN/Tor
- Never use real IP
- Never use real credentials
- Clean all logs
- Work in tmpfs
- Destroy infra after use
