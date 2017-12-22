# yumonclearlinux
script to set up basic yum functionality on Intel Clear Linux

## Background

Intel Clear Linux groups it's packages in task-specific [bundles](https://clearlinux.org/documentation/clear-linux/reference/bundles/available-bundles).

These are generally very useful.

## The Problem

But you want to install third-party apps, Intel recommends [flatpak](https://clearlinux.org/documentation/clear-linux/tutorials/flatpak).

Flatpak is helpful for apps like Spotify and Corebird which have complicated dependency requirements.

But overall I find the flatpak apps to be slow compared to optimized Intel Clear Linux binaries.

Also not all third-party apps are available in flatpak, such as Enpass or Virtual Studio Code.

## Solution

Intel Clear Linux includes a yum utility in the os-clr-on-clr bundle that can be set up with repos, including a handy Intel Clear Linux yum repo.

This allows basic yum functionality and more package granularity than the official Intel Clear Linux bundle approach.

## Why Should I Care?

This allows you to:

* Install specific packages in Intel Clear Linux, from Intel Clear Linux repo's containing optimized binaries, without having to install an entire bundle.
* Install third-party yum repos and rpms and fulfill their dependencies with Intel Clear Linux optimized binaries.
* Build from third-party source rpms with optimized settings and fulfill their dependencies with optimized Intel Clear Linux source. 
 
## Known Working

* Visual Studio Code (via Microsoft's yum repo)
* Enpass
* EPEL 7 repo

## Known Issues

* yum-config-manager doesn't work, fails with "ImportError: No module named iniparse" despite installation of iniparse, python-iniparse, and python3-iniparse. **Workaround**: Edit /etc/yum.conf directly.
* Adding any Fedora project main yum repos, 25-27, tries to install a bunch of packages with dependencies issues, wreaks havoc on the machine.
* Uninstalling python3 breaks yum.

## Caution

Installing packages using yum instead of swupd is not officially supported and can and will break your system, swupd, and cause data loss. Test all use of this in a virtual machine first.
