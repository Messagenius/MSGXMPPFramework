#
# Be sure to run `pod lib lint MSGXMPPFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MSGXMPPFramework'
  s.version          = '1.0.0'
  s.summary          = 'XMPPFramework fork for Messagenius.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Forked version of XMPPFramework to be used in Messagenius.
                       DESC

  s.homepage         = 'https://github.com/Messagenius/MSGXMPPFramework.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Francesco Cosentino' => 'francesco@messagenius.com' }
  s.source           = { :git => 'https://github.com/Messagenius/MSGXMPPFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  s.swift_versions        = '5.9'

  s.source_files = 'MSGXMPPFramework/Classes/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'MSGXMPPFramework' => ['MSGXMPPFramework/Assets/*.png']
  # }

  s.public_header_files = 'MSGXMPPFramework/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'XMPPFramework/Swift', '1.0.0'
  
  s.libraries = 'xml2', 'resolv'
  s.frameworks = 'CoreData', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv'
  }
  s.dependency 'CocoaLumberjack'
  s.dependency 'CocoaAsyncSocket', '~> 7.6.5.1'
  s.dependency 'KissXML', '~> 5.3.2.1'
  s.dependency 'libidn', '~> 1.35.1'
  s.dependency 'CocoaLumberjack/Swift'
  
end
