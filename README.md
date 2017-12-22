# yumonclearlinux
script to set up yum on Intel Clear Linux

## Background

Intel Clear Linux groups it's packages in task-specific [bundles](https://clearlinux.org/documentation/clear-linux/reference/bundles/available-bundles).

These are generally very useful.

## The Problem

But you want to install third-party apps, they recommend [flatpak](https://clearlinux.org/documentation/clear-linux/tutorials/flatpak). 

Not all of my third-party apps are available in flatpak.

I also find the flatpak apps to be slow compared to optimized Intel Clear Linux binaries.

## Solution

Intel Clear Linux includes a yum utility in the os-clr-on-clr bundle that can be setup with repos, including a handy Intel Clear Linux yum repo.

## Why Should I Care?

This allows you to:

(1) Install specific packages in Intel Clear Linux, containing Intel Clear Linux optimized binaries, without having to install an entire bundle.

(2) Install third-party yum repos and rpms and fulfill their specific dependencies with Intel Clear Linux optimized binaries.
	
(3) Build from third-party source rpms with optimized settings and fulfill their dependencies with optimized Intel Clear Linux source. 
 
 
## Known Issues

(1) yum-config-manager doesn't work, fails with "ImportError: No module named iniparse" despite installation of iniparse, python-iniparse, and python3-iniparse. **Workaround**: Edit /etc/yum.conf directly.
