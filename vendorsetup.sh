rm -rf device/google/sunfish
rm -rf vendor/google/sunfish
rm -rf kernel/google/msm-4.14

git clone https://github.com/xioyo/device_google_sunfish.git -b elixir device/google/sunfish
git clone https://github.com/xioyo/proprietary_vendor_google_sunfish.git -b lineage-20 vendor/google/sunfish
git clone https://github.com/xioyo/android_kernel_google_msm-4.14.git -b lineage-20 kernel/google/msm-4.14
