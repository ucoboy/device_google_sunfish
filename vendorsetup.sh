rm -rf device/google/sunfish
rm -rf vendor/google/sunfish
rm -rf kernel/google/msm-4.14

git clone --depth=1 https://github.com/ProjectElixir-Devices/device_google_sunfish.git -b udc device/google/sunfish
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_google_sunfish.git -b udc vendor/google/sunfish
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_kernel_google_msm-4.14.git -b fourteen kernel/google/msm-4.14
