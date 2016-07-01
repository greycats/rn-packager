#
#  Be sure to run `pod spec lint Xealth.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#

Pod::Spec.new do |s|

  s.name         = "Xealth"
  s.version      = "0.0.2"
  s.summary      = "Demo project for packaging a react native app into a framework."
  s.description  = "this project demostrates how to convert a React Native app(view) into a pod"

  s.homepage     = "https://github.com/greycats/rn-packager"

  s.license      = "BSD"
  s.author    = "Rex Sheng"
  s.platform     = :ios, '8.0'

  s.source = { :git => "https://github.com/greycats/rn-packager.git", :tag => "#{s.version}" }
  s.source_files = "ios/XealthView.{h,m}"
  s.public_header_files = 'ios/XealthView.h'
  s.resource_bundle = { 'XealthResource' => 'ios/main.jsbundle' }
  s.vendored_frameworks = 'ios/React.framework'
  s.requires_arc = true

end
