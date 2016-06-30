#
#  Be sure to run `pod spec lint Xealth.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#

Pod::Spec.new do |s|

  s.name         = "Xealth"
  s.version      = "0.0.1"
  s.summary      = "A short description of Xealth."
  s.description  = <<-DESC
  Demo project for packaging a react native app into a framework
                   DESC

  s.homepage     = "https://github.com/greycats/rn-packager"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "BSD"
  s.author    = "Rex Sheng"
  s.platform     = :ios, '8.0'

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/greycats/rn-packager.git", :tag => "#{s.version}" }
  s.source_files  = "DemoView.{h,m}"
  # s.resources = "main.jsbundle"
  s.resource_bundle = { 'XealthResource' => 'main.jsbundle' }
  s.vendored_frameworks = 'React.framework'
  s.requires_arc = true

end
