# Full Bitcoin Node

This is a very simple bitcoin node, you will need a volume to /app/data on launch.

# Build/Run

`docker build -t bitcoin .`

`docker run -d --restart always --name bitcoin -p 8333:8333 -p 8332:8332 -v /var/local/bitcoin:/app/data bitcoin`


## Feeling Lazy?

Just run my published version hosted on AWS:

`docker run -d --restart always --name bitcoin -p 8333:8333 -p 8332:8332 -v /var/local/bitcoin:/app/data public.ecr.aws/u8i9m6d0/bitcoin:latest`

## Notes


Apparently bitcoin's servers are pretty slow so I put the tar in this repo, don't trust me or anyone. Check the sha yourself.

Shas can be found: https://bitcoin.org/bin/bitcoin-core-0.21.0/SHA256SUMS.asc

`sha256sum bitcoin-0.21.0-x86_64-linux-gnu.tar.gz` should return `da7766775e3f9c98d7a9145429f2be8297c2672fe5b118fd3dc2411fb48e0032` for this version.

**DO NOT OPEN PORT 8332 TO THE WORLD**

If you want to joint the world and be a happy little bitcoin node you should open port forwarding to 8333, it's fine to bind 8332 with the above run command but anyone on your local network will be able to run RPC commands

