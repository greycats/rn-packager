#Demo Project for Xealth

*this project demostrate how to convert a React Native app into a pod*

###Steps:
1. `npm install` to make sure React Native is downloaded
2. in ios folder, `pod install`, for preparing React pod
3. in ios folder, run `react-framework.sh` to pack React pod into a React.framework
4. in ios folder, `pod install` again, to link local podspec to the Demo app
5. Demo target is ready!
