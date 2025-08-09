# TWRP device tree for OnePlus Ace 5

OnePlus Ace 5 (codenamed _"giulia"_) is a high-end smartphone from OnePlus.

## Build it yourself?

```
mkdir ~/home
export PATH=~/twrp-16.0:$PATH
cd ~/twrp-16.0
curl https://storage.googleapis.com/git-repo-downloads/repo -o repo
chmod +x repo
repo init --depth=1 -u https://github.com/TWRP-Test/platform_manifest_twrp_aosp.git -b twrp-16.0  --depth=1
repo sync -j16
git clone --depth=1 https://github.com//vitaliylysikov/twrp_device_oneplus_giulia device/oneplus/giulia
```

```
source build/envsetup.sh
lunch twrp_giulia-bp2a-eng
make -j2 aapt recoveryimage
```


If there is no error, recovery.img will be found in out/target/product/giulia/recovery.img  

**NOTE**  

Using Github Actions to build `twrp-16` branch may fail because of the large source


## Features

Not works:
- [ ] Touch in fastbootd

Works:
- [X] ADB
- [X] Display
- [X] Decryption
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator
- [X] Mount /data

## To use it:

```
fastboot flash recovery recovery.img
```

or

```
fastboot flash recovery_a recovery.img
fastboot flash recovery_b recovery.img
```
