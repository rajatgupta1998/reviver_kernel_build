#!/bin/bash

echo "Setting up the build environment"

echo "Updating your Arch system, please wait a while"

sudo pacman -Syu

# Let us use pacaur for installing packages from the AUR (Arch User Repository)

sudo pacman -S pacaur

# Installing the bare level packages which are needed

pacaur -S base-devel git wget multilib-devel cmake svn clang
 