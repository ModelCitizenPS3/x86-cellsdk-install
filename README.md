# x86-cellsdk-install
A super simple script to automate install of Cell CPU cross development tools on a modern x86_64 Fedora system. The original Cell/B.E. SDKs were packaged as RPM files and organized into yum (dnf) repos easily installable on Fedora/RHEL Linux distributions back in 2009 or so. Many (most) of these packages are still compatible/installable on modern Fedora if only the yum (dnf) repos were still being hosted by somebody somewhere...
### MODEL CITIZEN TO THE RESCUE
I'm hosting these repos on my own server now [http://www.ps3linux.net/cellsdk-repos](here). This script will connect your Fedora package manager (yum/dnf) to my website and download/install all components of the SDK that still work on modern Fedora - including the GNU PPU/SPU cross-compiling toolchains. The toolchains are old (based on gcc 4.1.1) but they are functional, fully-featured, and ready to compile Cell code for you now. Your other option would be to build the PPU/SPU cross toolchains yourself which is doable... if you enjoy torture. Documentation on building cross toolchains is maddeningly scarce, and documentation on building cross tools for the Cell CPU is virtually non-esistant.
### Last Tested: 07-29-2024 on Fedora 40 (x86_64) Server Edition
To use, simply clone this repo, enter the x86-cellsdk-install directory, and run the script "x86-cellsdk-install.sh" as root. Most files will be installed under your /opt directory.
### Recomended Configs
- Add directory /opt/cell/toolchain/bin to your PATH envireonment variable for your new GNU PPU/SPU toolchains.
- Add directory /opt/ibmcmp/xlc/ssc/0.9/bin to your PATH environment variable for your new IBM XLC compiler tools.
- Add environment variable CELL_TOP=/opt/cell/sdk to your .bashrc file.
### Happy SPUing!

