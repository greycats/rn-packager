#Demo Project for Xealth

*this project demostrates how to convert a React Native app(view) into a pod*


### Steps:

this podspec should work out of the box, but to generate a pod of your own project, these are the steps:

1. `npm install` to make sure React Native is downloaded
2. in ios folder, `pod install`, for preparing React pod
3. in ios folder, run `react-framework.sh` to pack React pod into a React.framework
4. (...add other deps into this .podspec)
4. in ios folder, `pod install` again, to link local podspec to the Demo app
5. Demo target is ready!
