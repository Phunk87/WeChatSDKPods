#
# Be sure to run `pod lib lint WeChatSDKPods.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WeChatSDKPods"
  s.version          = "0.1.0"
  s.summary          = "WeChatSDK's Pods"
  s.homepage         = "https://github.com/0dayZh/WeChatSDKPods"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "0dayZh" => "0day.zh@gmail.com" }
  s.source           = { :git => "https://github.com/0dayZh/WeChatSDKPods.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'WeChatSDKPods' => ['Pod/Assets/*.png']
  }

  s.public_header_files = "Pod/Library/include/WeChat/*.h"
  s.source_files = 'Pod/Library/include/**/*.h'
  s.resource_bundles = {
    'WeChatSDKPods' => ['Pod/Assets/images.bundle/*.png']
  }

  # s.frameworks = "UIKit", "Foundation", "CoreGraphics", "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES", "AVFoundation", "CoreMedia"
  # s.libraries = "iconv", "z", "bz2"

  s.default_subspec = "precompiled"

  s.subspec "precompiled" do |ss|
    ss.preserve_paths         = "Pod/Library/include/WeChat/*.h", 'Pod/Library/lib/*.a'
    ss.vendored_libraries   = 'Pod/Library/lib/*.a'
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/WeChat/lib/include" }
  end
end
