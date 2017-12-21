#!/bin/bash

sudo swupd add-bundle os-clr-on-clr

sudo cp /etc/yum.conf /etc/yum.conf.old
sudo rm /etc/yum.conf

sudo cp yum.conf /etc/yumd.conf
