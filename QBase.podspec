#
# Be sure to run `pod lib lint QBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QBase'
  s.version          = '1.0.1'
  s.summary          = 'QBase.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "A short description of QBase"

  s.homepage         = 'https://github.com/xuekey/QBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuekey' => '328928303@qq.com' }
  s.source           = { :git => 'https://github.com/xuekey/QBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'QBase/Classes/**/*'
s.subspec 'Base' do |b|
    b.source_files = 'QBase/Classes/Base/**/*'
end

s.subspec 'Category' do |c|
    c.source_files = 'QBase/Classes/Category/**/*'
    c.dependency 'SDWebImage'
end

#s.subspec 'Network' do |n|
#   n.source_files = 'TZSoundBase/Classes/Network/**/*'
#   n.dependency 'AFNetworking'
#end

  # s.resource_bundles = {
  #   'QBase' => ['QBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
