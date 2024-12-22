# Introduction

The [WSL2-Linux-Kernel][wsl2-kernel] repo contains the kernel source code and
configuration files for the [WSL2][about-wsl2] kernel.

# Build Instructions

Instructions for building an x86_64 AGNi WSL2 kernel with an Ubuntu distribution are
as follows:

1. Install the build dependencies:  
   `$ sudo apt install build-essential flex bison dwarves libssl-dev libelf-dev`
2. Build the kernel using the WSL2 kernel configuration:  
   `$ mkdir OUT`
   `$ make O=OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88`
   Compiled kernel will be found in OUT/x86/boot/bzImage
3. Editing config:
   `$ make menuconfig O=OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88`
4. Saving edited config:
   `$ cp -f OUT/Microsoft/config-wsl_psndna88 Microsoft/config-wsl_psndna88`
   
# Install Instructions
Create file named ".wslconfig" in "C:\Users\<user>" (replace <user> with your windows username folder)
add following lines to enable custom kernel boot in WSL:

[wsl2]
memory=8GB   # Limits VM memory in WSL 2
processors=6 # Limits WSL 6 logical processors
kernel=C:\\Users\\<user>\\bzImage

NOTE: users can edit memory & processors as per their requirements & edit user as mentioned above

