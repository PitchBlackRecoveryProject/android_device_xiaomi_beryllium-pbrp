# android_device_xiaomi_beryllium
For building TWRP for Xiaomi PocoPhone F1

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Now UI is very smooth
- Vibration on touch
- Correct screenshot color 

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/beryllium" name="mauronofrio/android_device_xiaomi_beryllium" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_beryllium-eng
mka adbd recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/beryllium/recovery.img
```
## Contributors

[Here](https://github.com/TeamWin/android_device_xiaomi_polaris/graphs/contributors)

## Thanks

- Thanks to @notsyncing for the base: https://github.com/notsyncing/android_device_xiaomi_polaris
