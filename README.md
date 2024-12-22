# tftpd
TFTPD Server with Write Access

## Example Usage

```sh
mkdir tftproot
chmod 777 tftproot
podman run -it --name tftpd --mount type=bind,src=$(pwd)/tftproot,dst=/tftproot,rw=true,relabel=shared --net host ghcr.io/jweisner/tftpd:latest
```
