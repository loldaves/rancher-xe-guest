### rancher-xe-guest

![RancherOS logo](https://raw.githubusercontent.com/loldaves/rancher-xe-guest/master/logo.png)

This image provides the XenServer Guest Utils for RancherOS.

#### How to use it

##### Start it manually

```
sudo system-docker run -d --restart=always --name xe-guest --net=host --privileged=true loldaves/rancher-xe-guest:latest
```

##### Use cloud-config.yml

Put this inside your cloud-config file :

```
rancher:
  services:
    xe-guest:
      container_name: xe-guest
      image: loldaves/rancher-xe-guest:latest
      net: host
      privileged: true
      labels:
        io.rancher.os.scope: system
```
