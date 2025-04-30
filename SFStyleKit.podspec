#
# Be sure to run `pod lib lint SFStyleKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFStyleKit'
  s.version          = '1.0.0'
  s.summary          = 'SFStyleKit is a swift library that supports chain programming and provides many useful extensions for iOS apps. (zh: SFStyleKit是一个为系统原生api增加链式编程写法的swift库，同时为许多原生类增加了扩展。)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  At present, the native APIs of 16 classes including CALayer and UIKit have been added with chain programming, and extensions have been added to 27 types including UIKit, Foundation, and CLLocation.
  
  (目前为CALayer、UIKit共16个类的原生api增加了链式编程写法，同时为UIKit、Foundation和CLLocation共27个类型增加了扩展。)
                       DESC

  s.homepage         = 'https://github.com/Sfh03031/SFStyleKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sfh03031' => 'sfh894645252@163.com' }
  s.source           = { :git => 'https://github.com/Sfh03031/SFStyleKit.git', :tag => s.version.to_s }
  s.swift_versions   = '5'
  s.platform         = :ios, '12.0'
#  s.static_framework = true

  s.source_files     = 'SFStyleKit/Classes/**/*'
  s.frameworks       = 'UIKit', 'Foundation', 'QuartzCore'
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'SFStyleKit/Classes/SFExStyle++/SFExStyle.swift'
  end
  
  s.subspec 'JWEx' do |ss|
      ss.source_files = 'SFStyleKit/Classes/Extension++/**/*'
  end
  
  s.subspec 'JWChain' do |ss|
      ss.source_files = 'SFStyleKit/Classes/SFExStyle++/**/*'
  end
  
end
