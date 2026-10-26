# FreeRDP

This repository contains the final working deliverable for the project scope we can honestly build here:

- a polished FreeRDP-themed profile website
- About section in the profile card
- responsive UI for desktop and mobile
- Linux RDP client setup scripts for real remote desktop usage
- a smoke test script for validation
- a launch script for quick local start

## Quick start

From the project folder, run:

```bash
chmod +x run.sh install_rdp_client.sh connect_rdp.sh smoke_test.sh
./run.sh
```

Then open:

```text
http://localhost:8000
```

## Website validation

```bash
./smoke_test.sh
```

## Real Linux RDP client setup

```bash
sudo ./install_rdp_client.sh
```

Then connect to a host:

```bash
./connect_rdp.sh 192.168.1.10 administrator Password123 3389
```

Or direct command:

```bash
xfreerdp /u:administrator /p:Password123 /v:192.168.1.10:3389 /cert:ignore /f
```

## Notes
- The website is fully working as a static site.
- The RDP client scripts are real and usable if a machine is exposing port 3389.
- A true native FreeRDP desktop app built from source is a separate project requiring a full C/C++ toolchain and target environment.
- This repo is the final functional and honest version of the deliverable for this environment.
