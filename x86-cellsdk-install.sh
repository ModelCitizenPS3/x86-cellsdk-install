#!/bin/bash
#
# RUN AS ROOT

if [ $(id -u) != 0 ]; then
    printf "Please run as root.\n"
    exit 1
fi

cp -fv rpm-gpg/RPM-GPG-KEY-cellsdk /etc/pki/rpm-gpg/RPM-GPG-KEY-cellsdk
cp -fv rpm-gpg/RPM-GPG-KEY-cellsdk-open /etc/pki/rpm-gpg/RPM-GPG-KEY-cellsdk-open
cp -fv yum.repos.d/cellsdk.repo /etc/yum.repos.d/cellsdk.repo

dnf clean all
dnf makecache
dnf -y install http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/15/Everything/i386/os/Packages/compat-expat1-1.95.8-7.i686.rpm
dnf -y install ppu-binutils ppu-gcc ppu-gcc-c++ ppu-gcc-gnat spu-binutils spu-gcc spu-gcc-c++ spu-newlib alf-ide-template cell-spu-isolation-tool-source cell-xlc-ssc-cmp cell-xlc-ssc-help cell-xlc-ssc-lib cell-xlc-ssc-man cell-xlc-ssc-omp cell-xlc-ssc-rte cell-xlc-ssc-rte-lnk cellide cell-documentation cell-extras-documentation alf-cross-devel alf-manpages alfman blas-cross-devel blas-manpages dacs-cross-devel dacs-manpages dacsman lapack-cross-devel libfft-cross-devel libfft-manpages libmc-rand-cross-devel libmc-rand-manpages libspe2-manpages libspe2man mass-cross-devel ppu-xlmass-lib simdman simdmath-cross-devel simdmath-manpages spu-newlib-manpages spu-xlmass-lib alfxds-cross-devel cell-spu-isolation-cross-devel cell-spu-isolation-loader-cross libfft3d-cross-devel pdt-cross-devel pdt-devel spu-timer-cross-devel trace-cross-devel trace-devel cell-devel-license cell-extras-Fedora-license cell-extras-RHEL-license cell-spu-timing pdt trace alf-examples-source blas-examples-source cell-buildutils cell-demos-cross cell-demos-source cell-examples-cross cell-examples-source cell-libs-cross cell-libs-cross-devel cell-libs-source cell-tutorial-cross cell-tutorial-source dacs-examples-source lapack-examples-source libfft-examples-source libmc-examples-source alf-hybrid-examples-source alfxds-examples-source cell-compliance-tests-cross cell-compliance-tests-source dacs-hybrid-examples-source libfft3d-examples-source ppu-gdb spu-gdb

sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/cellsdk.repo

printf "\nCell SDK (x86) install complete! Look in /opt for your new software.\n\nNOTE:\nDisabled Cell SDK repos (so dnf won't re-index them every time you update or install new software).\nTo re-enable: Edit your /etc/yum.repos.d/cellsdk.repo config file.\n\nALSO NOTE:\nYou may want to add /opt/cell/toolchain/bin to your PATH environment variable to make using your new ppu/spu gnu toolchains from the command line more convenient. Also add /opt/ibmcmp/xlc/ssc/0.9/bin to your PATH if you plan to use IBM's xlc compiler.\n\nHappy SPUing!\n\n"

exit 0

