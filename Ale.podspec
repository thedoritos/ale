#
# Be sure to run `pod lib lint Ale.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Ale'
  s.version          = '0.1.0'
  s.summary          = 'Small pieces of code to help iOS development.'

  s.description      = <<-DESC
                         Ale consists of small pieces of code that help iOS development.
                       DESC

  s.homepage         = 'https://github.com/thedoritos/Ale'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'thedoritos' => 'thedoritos@gmail.com' }
  s.source           = { :git => 'https://github.com/thedoritos/Ale.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Ale/Classes/**/*'

  # s.resource_bundles = {
  #   'Ale' => ['Ale/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
