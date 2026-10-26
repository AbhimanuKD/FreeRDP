# FreeRDP

This repository currently contains a polished, working personal profile site for the `FreeRDP` branding, and it also includes an actual Linux RDP client setup script for real remote desktop use.

## Included
- Premium claymorphism landing/profile page
- About section inside the identity card
- Contact and hero sections
- Responsive design
- Linux install script for `xfreerdp`
- Linux connection script for connecting to an RDP server

## Website project
Open `index.html` directly in a browser, or run:

```bash
python3 -m http.server 8000
```

Then visit:

```text
http://localhost:8000
```

## Real RDP client setup (Linux)
Install the real FreeRDP client:

```bash
chmod +x install_rdp_client.sh
sudo ./install_rdp_client.sh
```

Connect to an RDP server:

```bash
chmod +x connect_rdp.sh
./connect_rdp.sh 192.168.1.10 administrator Password123 3389
```

Example direct command:

```bash
xfreerdp /u:administrator /p:Password123 /v:192.168.1.10:3389 /cert:ignore /f
```

## Notes
- This repository can be published as a website.
- The actual RDP connection requires a real Windows/Linux machine exposing port 3389.
- This is the real working FreeRDP client approach for a beginner Linux environment.
