# x86-cellsdk-install

Super simple script to automate install of Cell CPU cross development tools on a modern x86_64 Fedora system.
The original Cell/B.E. SDKs were packaged as RPM files and organized into yum (dnf) repos easily installable on any Fedora/RHEL Linux distribution back in 2009 or therabouts.
Many (most) of these packages are still installable/usable in modern Fedora... if only the yum (dnf) repos were still being hosted somewhere by someone on this planet!

### MODEL CITIZEN TO THE RESCUE

I'm hosting these repos now on my own Playstation 3 web server (running ppc Fedora) at [http://www.ps3linux.net/cellsdk-repos/](www.ps3linux.net/cellsdk-repos). This script will connect your Fedora to my repos and install all components of the SDK that still work in modern Fedora, including the PPU/SPU cross-compiling toolchains.
The toolchains are old (based on gcc 4.1.1) but they are functional, fully-featured, and ready to compile your code right now.
Your other option would be to build the PPU/SPU toolchains yourself, which is doable... if you enjoy torture :-)
Documentation on building cross gnu toolchains is maddeningly sparse; and documentation on building cross tools (binutils, gcc, etc.) for the Cell's SPU cores is completely non-esistant.

To use this repo, simply clone it and run the script (x86-cellsdk-install) as root on your x86_64 Fedora system. It will pull in all the RPMs that still work.

Happy SPUing!
