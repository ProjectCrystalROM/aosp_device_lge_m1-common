# Project Crystal AOSP5.1.1 — MS330 common device integration

Shared configuration for `aosp_m1-user` / Android5.1.1 API22. Use the dedicated
[Project Crystal AOSP manifest](https://github.com/ProjectCrystalROM/aosp_manifest)
and [product tree](https://github.com/ProjectCrystalROM/aosp_device_lge_m1).
This tree alone is not a buildable ROM.

## Active selections

- Stock LG GPS HAL directly installed as gps.msm8909.so, with matching AOSP JNI
  XTRA/AGPS adaptations already carried in the platform fork.
- Original K7 camera/sensor/JPEG stack, working media profiles and stock audio routes.
- Source-built wireless helpers, stable Bluetooth address handoff and reviewed
  firmware/mount ordering.
- Matched stock radio providers and dsi_config.xml, with source-owned platform libraries.
- Safe simplified LG USB profiles and explicit staged diagnostic controls.

The selected API22 ramdisk assets live in `rootdir/cm12` for historical pathname
compatibility. The directory name does not select a CyanogenMod product or platform.
Do not substitute the retained Android6 ramdisk assets into this AOSP build.

Owner AOSP tests confirm Wi-Fi/Bluetooth/LTE and applicable reboot persistence,
photo/video capture and audio input/output. User variant and enforcing stages passed.
See the product release notes for exact validation boundaries; do not import old
CM hardware claims into the AOSP matrix.

## Historical material

`platform/`, old Bluetooth patch exports, `ril/compat` and `security/` contain
inherited bringup or CM12.1 research history. They are not patch-application steps
for the current AOSP checkout. The authoritative CM12.1 security ledger remains
with that separate CM work; this AOSP copy is inherited historical material, not a
new AOSP security-coverage ledger. Use the dedicated source forks from the manifest,
where the required current adaptations are already committed.
