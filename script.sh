#!/bin/bash

echo "Setting up the build environment"

echo "Updating your Arch system, please wait a while"

sudo pacman -Syu

# Let us use pacaur for installing packages from the AUR (Arch User Repository)

sudo pacman -S pacaur

# Installing the bare level packages which are needed

pacaur -S base-devel git wget multilib-devel cmake svn clang

# The gpg key for the following packages isn't working as of now, so skip the gpg check. kanged from @akhilnarang 's for loop. :p

for var in ncurses5-compat-libs lib32-ncurses5-compat-libs;
    do
        git clone https://aur.archlinux.org/$var
        cd $var
        makepkg -si --skippgpcheck
        cd ..
        rm -rf $var
    done