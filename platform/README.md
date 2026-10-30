# Historical platform patch exports

This directory retains earlier CM bringup patches and provenance. They are not
instructions for building the current Project Crystal AOSP5.1.1 product.

Use the dedicated AOSP manifest: the required microG, libc, Binder, GPS, Bluetooth,
CAF interface and recovery-preservation changes are committed in its platform
forks already. Do not apply the CM13 or cm12.1 exports to those repositories.

CM-specific source bases, validation reports and patch hashes remain historical
references. They do not establish AOSP runtime acceptance or security coverage.
The current build/release instructions live in device/lge/m1/AOSP_RELEASE.md.
