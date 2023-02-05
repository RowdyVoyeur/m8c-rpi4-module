# M8C Module for Patchbox OS

## Introduction
This is a module for Patchbox OS to autostart [M8C](https://github.com/laamaa/m8c) on boot. Since this module was developed specifically for Raspberry Pi 4, it should be used together with [m8c-rpi4](https://github.com/RowdyVoyeur/m8c-rpi4).
There are two main benefits of using this module:

- Automatically start the M8 Client on Raspberry Pi boot without having to resort to ```systemd``` or ```crontab```, which simplifies the installation process;

- Switch between different Patchbox OS modules such as [MODEP](https://blokas.io/modep/), [Orac](https://community.blokas.io/t/orac-2-0-for-the-raspberry-pi/1099) or [Pure Data](https://puredata.info/), which will let you take full advantage of this audio oriented OS and use the Raspberry Pi for far more things than just running the M8C.

Please note that this project is not affiliated with [Dirtywave](https://dirtywave.com/) and there is no guarantee or support from either the manufacturer or myself. You can build it at your own risk.

## Install

To install this module, run the command below:
```
patchbox module install https://github.com/RowdyVoyeur/m8c-rpi4-module
```
The module expects to have [m8c-rpi4](https://github.com/RowdyVoyeur/m8c-rpi4) already installed at ```home/patch/m8c-rpi4``` and the [script](https://github.com/RowdyVoyeur/m8c-rpi4/blob/main/m8c.sh) to be executable by everyone. Please read the [installation guide](https://github.com/RowdyVoyeur/m8c-rpi4/blob/main/README.md#installation) for mode details.

To activate the module, just run the following:
```
patchbox module activate m8c-rpi4-module
```
Alternatively, run ```patchbox```, go to modules menu and select ```m8c-rpi4-module``` module.

## Deactivate and Uninstall

To deactivate the module, just run:
```
patchbox module deactivate
```
Alternatively, run ```patchbox```, go to modules menu and select ```none``` module.

This module is installed in ```/usr/local/patchbox-modules/imported/```, so if you wish to completely delete it run:
```
cd /
cd usr/local/patchbox-modules/imported
sudo rm -rf m8c-rpi4-module
```

## References

[Learn more about patchbox modules](https://blokas.io/patchbox-os/docs/modules/)

[How to create patchbox modules](https://blokas.io/patchbox-os/docs/creating-a-module/)

[Complete reference guide of patchbox-module.json](https://blokas.io/patchbox-os/docs/patchbox-module-json/)
