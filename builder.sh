# now let us start the real build

clear 

echo "Now let us start the real build"

# Setting up CROSS_COMPILE

cd toolchain/google-arm-eabi-4.8

export CROSS_COMPILE=$(pwd)/bin/arm-eabi-

cd ..