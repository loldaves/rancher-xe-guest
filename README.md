### rancher-xe-guest

![RancherOS logo](https://raw.githubusercontent.com/loldaves/rancher-xe-guest/master/logo.png)

XenServer 7 Tools for RancherOS

#### How to use it

##### Start it manually

```
sudo system-docker run -d --restart=always --name xe-guest --net=host --privileged=true artemh/rancher-xe-guest:latest
```

##### Use cloud-config.yml

Put this inside your cloud-config file :

```
rancher:
  services:
    xe-guest:
      container_name: xe-guest
      image: artemh/rancher-xe-guest:latest
      net: host
      privileged: true
      labels:
        io.rancher.os.scope: system
```
