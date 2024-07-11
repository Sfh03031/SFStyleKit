#
# Be sure to run `pod lib lint SFStyleKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFStyleKit'
  s.version          = '0.1.4'
  s.summary          = 'SFStyleKit is a swift library that supports chain programming and provides many useful extensions for iOS apps. (zh: SFStyleKit是一个为支持链式编程的swift库，同时提供了许多有用的扩展。)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
目前支持了UIKit、CALayer等共22种类型的链式编程写法，同时为UIDevice、UIApplication、UIView、UIImage、UIImageView、UIButton、UIColor等提供了各式扩展，例如UIDevice的设备型号、系统版本、电池、屏幕方向、屏幕亮度、设备音量、是否越狱、磁盘总/可用大小等属性或方法，UIApplication的缓存路径、内存使用情况，UIView的点击事件、动画，UIImage的加载gif数据、保存到系统相册，UIImageView的预览、加载gif图片，UIButton的调整图片和文字相对位置，UIColor的随机色、中国色、潘通年度色...
                       DESC

  s.homepage         = 'https://github.com/Sfh03031/SFStyleKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sfh03031' => 'sfh894645252@163.com' }
  s.source           = { :git => 'https://github.com/Sfh03031/SFStyleKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'SFStyleKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SFStyleKit' => ['SFStyleKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'QuartzCore'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
