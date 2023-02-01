# M8C Module for Patchbox OS

## Introduction
This is a module for Patchbox OS to autostart m8c-rpi4 on boot. Therefore, it should be used together with [m8c-rpi4](https://github.com/RowdyVoyeur/m8c-rpi4).

## Install

To install this module, run the command below. Note that the module expects to have m8c-rpi4 already installed at ```/usr/local/m8c-rpi4/```:
```
patchbox module install https://github.com/RowdyVoyeur/m8c-rpi4-module
```

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
cd .usr/local/patchbox-modules/imported
sudo rm -rf m8c-rpi4-module
```

## References

[Learn More About Patchbox Modules](https://blokas.io/patchbox-os/docs/modules/)

[How to Create Patchbox Modules](https://blokas.io/patchbox-os/docs/creating-a-module/)

[Complete Reference of patchbox-module.json](https://blokas.io/patchbox-os/docs/patchbox-module-json/)
