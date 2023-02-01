# M8C Module for Patchbox OS

## Introduction
This is a module for Patchbox OS to autostart m8c-rpi4. It's still a work in progress and does not work yet as intended.

## Install

To install this module, just run:
```
patchbox module install https://github.com/RowdyVoyeur/m8c-rpi4-module
```

Please note that the modulde expects to have m8c-rpi4 installed at:
```
/usr/local/m8c-rpi4/
```

To activate the module, run the following:
```
patchbox module activate m8c-rpi4-module
```

Alternatively, run ```patchbox```, go to modules menu and select ```m8c-rpi4-module``` module.

## Deactivate and Uninstall

To deactivate the module, run:
```
patchbox module deactivate
```

Alternatively, run ```patchbox```, go to modules menu and select ```none``` module.

This module is installed in ```/usr/local/patchbox-modules/imported/```, so if you wish to completely delete it run:
```
cd .usr/local/patchbox-modules/imported
sudo rm -rf m8c-rpi4-module
```

## Notes

Sources:

[Learn More About Patchbox Modules](https://blokas.io/patchbox-os/docs/modules/)

[How to Create Patchbox Modules](https://blokas.io/patchbox-os/docs/creating-a-module/)
