#!/bin/sh

UNLOCALIZED_RESOURCES_FOLDER_PATH=ios CONFIGURATION_BUILD_DIR=. CONFIGURATION=Release ../node_modules/react-native/packager/react-native-xcode.sh

xcodebuild -target Packager ONLY_ACTIVE_ARCH=NO -configuration Release -sdk iphoneos
xcodebuild -target Packager ONLY_ACTIVE_ARCH=NO -configuration Release -sdk iphonesimulator

cp -R "build/Release-iphoneos/Packager.framework" "build/"

lipo -create -output "build/Packager.framework/Packager" "build/Release-iphonesimulator/Packager.framework/Packager" "build/Release-iphoneos/Packager.framework/Packager"

rm -rf ~/projects/rn-sdk-ios-demo/UsingReactDemo/UsingReactDemo/Packager.framework
cp -R build/Packager.framework ~/projects/rn-sdk-ios-demo/UsingReactDemo/UsingReactDemo/