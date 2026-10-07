# Split n Key

Browser-based STL splitting and key generation. The initial application is the
uploaded standalone HTML app, preserved as `index.html`. Assisted crease paths
and nonplanar splitting are planned features, not implemented in this version.

## Local development

Run `python3 -m http.server 8080 --bind 127.0.0.1` from this checkout and open
the application in a browser. STL processing happens in the browser.

## Container service

Build and start from this checkout:

```sh
docker build -t split-n-key .
docker run -d --name split-n-key --restart unless-stopped \
  -p 127.0.0.1:8080:8080 split-n-key
curl --fail http://127.0.0.1:8080/healthz
```

Choose an unused host port if 8080 is already occupied. Configure the server's
existing HTTPS reverse proxy for the selected subdomain to forward to that port,
and point its DNS record at the server. Server-specific deployment and DNS
configuration will be added once the target infrastructure is known.
