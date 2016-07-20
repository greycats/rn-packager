rm -rf $TMPDIR/react-*
rm -f android/app/src/main/assets/index.android.bundle
react-native bundle --minif --platform android --dev false --entry-file index.android.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/
