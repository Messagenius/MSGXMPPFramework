#
# Be sure to run `pod lib lint MSGXMPPFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MSGXMPPFramework'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MSGXMPPFramework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Francesco Cosentino/MSGXMPPFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Francesco Cosentino' => 'francesco@messagenius.com' }
  s.source           = { :git => 'https://github.com/Francesco Cosentino/MSGXMPPFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'MSGXMPPFramework/Classes/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'MSGXMPPFramework' => ['MSGXMPPFramework/Assets/*.png']
  # }

  s.public_header_files = 'MSGXMPPFramework/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'XMPPFramework/Swift'
  
  s.libraries = 'xml2', 'resolv'
  s.frameworks = 'CoreData', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv'
  }
  s.dependency 'CocoaLumberjack'
  s.dependency 'CocoaAsyncSocket', '~> 7.6'
  s.dependency 'KissXML', '~> 5.2'
  s.dependency 'libidn', '~> 1.35'
  s.dependency 'CocoaLumberjack/Swift'

  #s.dependency 'MSGXMPPFramework'
  
end
