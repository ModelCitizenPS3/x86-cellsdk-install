# x86-cellsdk-install

Super simple script to automate install of Cell CPU cross development tools on a modern x86_64 Fedora system.
The original Cell/B.E. SDKs were packaged as RPM files and organized into yum (dnf) repos easily installable on any Fedora/RHEL Linux distribution back in 2009 or therabouts.
Many (most) of these packages are still installable/usable in modern Fedora, if only the yum (dnf) repos were still being hosted somewhere by someone on this planet.
That's where I come in. I'm hosting these repos now (at http://www.ps3linux.net/cellsdk-repos). This script will connect your Fedora to my repos and install all components of the SDK that still work in modern Fedora, including the PPU/SPU cross-compiling toolchains.
The toolchains are old (based on gcc 4.1.1) but they are functional, full-featured, and ready to be put to work right now.
Your other option would be to build the toolchains yourself, which is doable... but a bit of a pain in the ass. Your choice.

To use this repo, simply clone it and run the script (x86-cellsdk-install) as root on your x86_64 Fedora system. It will pull in all the RPMs that still work.

TODO: add optional ppu-gdb and spu-gdb packages that are dependent on compat-expat1-1.95.8-7.i686.rpm from https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/15/Everything/i386/os/Packages/

Happy SPUing!
