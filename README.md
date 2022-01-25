# Vnstat-verify
##Verify traffic VPS

# Requires
vnstat
mailtools
ipsec
outline

# Installation
## Automatic installation
**This will install the dependencies directly**
1. chmod +x install.sh
2. ./install_script.sh

## vnstat-verify Service
```
cp vnstat-verify /lib/systemd/system/
```

## Reload Services
```
systemctl daemon-reload
```


