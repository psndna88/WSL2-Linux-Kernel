# Introduction

The [WSL2-Linux-Kernel][wsl2-kernel] repo contains the kernel source code and
configuration files for the [WSL2][about-wsl2] kernel.

# Reporting Bugs

If you discover an issue relating to WSL or the WSL2 kernel, please report it on
the [WSL GitHub project][wsl-issue]. It is not possible to report issues on the
[WSL2-Linux-Kernel][wsl2-kernel] project.

If you're able to determine that the bug is present in the upstream Linux
kernel, you may want to work directly with the upstream developers. Please note
that there are separate processes for reporting a [normal bug][normal-bug] and
a [security bug][security-bug].

# Feature Requests

Is there a missing feature that you'd like to see? Please request it on the
[WSL GitHub project][wsl-issue].

If you're able and interested in contributing kernel code for your feature
request, we encourage you to [submit the change upstream][submit-patch].

# Build Instructions

Instructions for building an x86_64 WSL2 kernel with an Ubuntu distribution are
as follows:

1. Install the build dependencies:  
   `$ sudo apt install build-essential flex bison dwarves libssl-dev libelf-dev cpio`

2. Modify WSL2 kernel configs (optional):  
   `$ make menuconfig KCONFIG_CONFIG=Microsoft/config-wsl`

   Loadable module support is disabled when using a custom built kernel. Set any modules you want to be built-in before building.

3. Build the kernel using the WSL2 kernel configuration:  
   `$ make KCONFIG_CONFIG=Microsoft/config-wsl`

Instructions for building an x86_64 AGNi WSL2 kernel with an Ubuntu distribution are
as follows:

1. Install the build dependencies:  
   `$ sudo apt install build-essential flex bison dwarves libssl-dev libelf-dev cpio`
2. Build the kernel using the WSL2 kernel configuration:  
   `$ mkdir OUT`
   `$ make O=OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88`
   Compiled kernel will be found in OUT/x86/boot/bzImage
3. Editing config:
   `$ make menuconfig O=OUT KCONFIG_CONFIG=Microsoft/config-wsl_psndna88`
4. Saving edited config:
   `$ cp -f OUT/Microsoft/config-wsl_psndna88 Microsoft/config-wsl_psndna88`
   
# Install Instructions

Please see the documentation on the [.wslconfig configuration
file][install-inst] for information on using a custom built kernel.

[wsl2-kernel]:  https://github.com/microsoft/WSL2-Linux-Kernel
[about-wsl2]:   https://docs.microsoft.com/en-us/windows/wsl/about#what-is-wsl-2
[wsl-issue]:    https://github.com/microsoft/WSL/issues/new/choose
[normal-bug]:   https://www.kernel.org/doc/html/latest/admin-guide/bug-hunting.html#reporting-the-bug
[security-bug]: https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
[submit-patch]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html
[install-inst]: https://docs.microsoft.com/en-us/windows/wsl/wsl-config#configure-global-options-with-wslconfig

Create file named ".wslconfig" in "C:\Users\<user>" (replace <user> with your windows username folder)
add following lines to enable custom kernel boot in WSL:

[wsl2]
memory=8GB   # Limits VM memory in WSL 2
processors=6 # Limits WSL 6 logical processors
kernel=C:\\Users\\<user>\\bzImage

NOTE: users can edit memory & processors as per their requirements & edit user as mentioned above

