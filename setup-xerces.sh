#!/bin/bash
## Xerces setup ##

## Download Xerces.
# TODO

## Compile Xerces.
cd xerces

# Make build and install directories.
mkdir -p linux-build
mkdir -p linux-install
cd linux-build

# Configure debug Xerces.
printf '\t- Configuring debug Xerces...\n'
../configure --disable-shared --disable-netaccessor-curl --disable-transcoder-icu --disable-msgloader-icu CFLAGS="-O0 -g -fPIC " CXXFLAGS="-O0 -g -fPIC " --prefix="/home/weasd/dev/non-OH/gmat/gmat-git/depends/xerces/linux-install" > "$logs_path/xerces_configure_debug.log" 2>&1

# Make debug Xerces.
printf '\t- Making debug Xerces...\n'
make -j4 > "$logs_path/xerces_build_debug.log" 2>&1

# Install debug Xerces.
printf '\t- Installing debug Xerces...\n'
make install -j4 > "$logs_path/xerces_install_debug.log" 2>&1

# Rename generated file to distinguish from release version.
mv ../linux-install/lib/libxerces-c.a ../linux-install/lib/libxerces-cd.a
printf '\t- Copied debug library file\n'

# Clean build environment.
make clean > /dev/null 2>&1

# Configure release Xerces.
printf '\n'
printf '\t- Configuring release Xerces...\n'
../configure --disable-shared --disable-netaccessor-curl --disable-transcoder-icu --disable-msgloader-icu CFLAGS="-O2 -fPIC " CXXFLAGS="-O2 -fPIC " --prefix="/home/weasd/dev/non-OH/gmat/gmat-git/depends/xerces/linux-install" > "$logs_path/xerces_configure_release.log" 2>&1

# Make release Xerces.
printf '\t- Making release Xerces...\n'
make -j4 > "$logs_path/xerces_build_release.log" 2>&1

# Install release Xerces.
printf '\t- Installing release Xerces...\n'
make install -j4 > "$logs_path/xerces_install_release.log" 2>&1

echo 'Xerces setup complete!'

cd $depends