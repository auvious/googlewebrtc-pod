#
# Be sure to run `pod lib lint AuviousSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AuviousGoogleWebRTC'
  s.version          = '84.4147.3'
  s.summary          = 'WebRTC iOS SDK'

  s.description      = <<-DESC
WebRTC is a free, open project that provides browsers and mobile applications with Real-Time Communications (RTC) capabilities via simple APIs.
                       DESC

  s.homepage         = 'https://webrtc.org/'
  s.license          = { :type => 'Multiple', :file => 'LICENSE.md' }
  s.author           = 'The WebRTC project authors'
  s.source           = { :git => 'https://github.com/auvious/googlewebrtc-pod.git', :tag => s.version.to_s }

  s.platform = :ios, '13.0'

  s.preserve_paths  = [
    'LICENSE.md',
    'README.md',
    'frameworks/*.framework'
  ]

  s.vendored_frameworks = [
    'frameworks/WebRTC.framework'
  ]
  
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'AUVIOUSSDK',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) AUVIOUSSDK',
    # Xcode 12 workaround
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
