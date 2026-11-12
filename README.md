# Tyrelink Infrastructure

VPS deployment configuration, reverse proxy, database backups, monitoring and release scripts belong here. Production secrets must be injected by the VPS secret manager/environment, never committed.

The compose file is local development only: it uses a sample password and host
port. Production uses a private PostgreSQL network, external secrets, TLS
reverse proxy and the systemd service template. Follow the release runbook in
`Tyrelink-docs/docs/` and record the exact frontend/API tags deployed together.
