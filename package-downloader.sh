#!/bin/bash

echo "Setting up the build environment"

echo "Updating your Arch system, please wait a while"

sudo pacman -Syu

# Let's git the shit
sudo pacman -S git

# Let us use Yay for installing packages from the AUR (Arch User Repository)

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ..

rm -rf yay

# First run
yay -Syyu

# Installing the bare level packages which are needed

pacaur -S base-devel wget multilib-devel cmake svn clang

# The gpg key for the following packages isn't working as of now, so skip the gpg check. kanged from @akhilnarang 's for loop. :p

for var in ncurses5-compat-libs lib32-ncurses5-compat-libs;
    do
        git clone https://aur.archlinux.org/$var
        cd $var
        makepkg -si --skippgpcheck
        cd ..
        rm -rf $var
    done

# Install these packages

pacaur -S aosp-devel lineageos-devel gradle maven

echo "Build Packages have been installed"
