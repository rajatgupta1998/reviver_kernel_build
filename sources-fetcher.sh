# Set different paths for kernel source and toolchains

echo "Creating directories for kernel source and the compiler"

mkdir -p source
mkdir -p toolchain


# Let us download the cross compiler

echo "Downloading Google's ARM EABI 4.8 toolchain"

git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8  toolchain/google-arm-eabi-4.8

# Get the main kernel source

git clone https://github.com/rajatgupta1998/android_kernel_motorola_msm8952.git -b nougat-7.1.2-arm source/nougat-7.1.2-arm