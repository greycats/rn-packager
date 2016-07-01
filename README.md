#Xealth - Packager

*this project prepares a basic react native project into a cocoapod with its RootView ready to use*

*the Xealth.podspec should work out of the box, but to generate a pod of your own:* 

### Baking Steps:

1. Delete all Libraries references of React-* and use `pod install` instead
2. Run `ios/react-framework.sh` to pack the react native app into a React.framework with main.jsbundle
3. Now `Xealth.podspec` is ready to use!
