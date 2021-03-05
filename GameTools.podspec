#
# Be sure to run `pod lib lint GameTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GameTools'
  s.version          = '0.1.0'
  s.summary          = 'Game development tools'
  s.homepage         = 'https://github.com/TerroKot/GameTools'
  s.author           = { 'Egor Tereshonok' => 'egor.tereshonok@gmail.com' }
  s.source           = { :git => 'https://github.com/TerroKot/GameTools.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version    = "5.4"
  s.source_files     = 'Source/**/*.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }


  # s.resource_bundles = {
  #   'GameTools' => ['GameTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
