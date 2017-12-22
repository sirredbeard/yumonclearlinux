# yumonclearlinux
script to set up yum on Intel Clear Linux

Intel Clear Linux groups it's packages in task-specific [bundles](https://clearlinux.org/documentation/clear-linux/reference/bundles/available-bundles).

If you want to install other apps, they recommend [flatpak](https://clearlinux.org/documentation/clear-linux/tutorials/flatpak). 

I find the flatpak apps to be slow.

Intel Clear Linux includes the yum utility that can be setup with repos, including Intel Clear Linux repo.

This allows you to:

  (1) Install third-party repos/rpms and fulfill their dependencies with optimized Intel Clear Linux binaries.
 
  (2) Install specific optimized Intel Clear Linux binaries.
