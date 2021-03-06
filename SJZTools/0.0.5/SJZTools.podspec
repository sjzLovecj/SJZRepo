#
#  Be sure to run `pod spec lint SJZTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SJZTools"
  s.version      = "0.0.5"
  s.summary      = "整理一下实用方法和属性"
  s.homepage     = "https://github.com/sjzLovecj/SJZTools"
  s.source       = { :git => "https://github.com/sjzLovecj/SJZTools.git", :tag => "#{s.version}" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios, "9.0"
  s.authors      = { "SJZ" => "shaojiazuo@163.com" }

  s.subspec 'Class' do |uc|
    uc.subspec 'UI' do |us|
      us.public_header_files = "SJZTools/Class/UI/SJZToolsUI.h"
      us.source_files = "SJZTools/Class/UI/SJZToolsUI.h"
      us.frameworks = "Foundation","UIKit"

      us.subspec 'View' do |usv|
        usv.source_files = "SJZTools/Class/UI/View/*.{h,m}"
        usv.frameworks = "Foundation","UIKit"
      end

      us.subspec 'Label' do |usl|
        usl.source_files = "SJZTools/Class/UI/Label/*.{h,m}"
        usl.frameworks = "Foundation","UIKit"
        usl.dependency "SJZTools/Class/UI/View"
      end

      us.subspec 'Button' do |usb|
        usb.source_files = "SJZTools/Class/UI/Button/*.{h,m}"
        usb.frameworks = "Foundation","UIKit"
        usb.dependency "SJZTools/Class/UI/View"
      end

      us.subspec 'SJZButton' do |usjzb|
        usjzb.source_files = "SJZTools/Class/UI/SJZButton/*.{h,m}"
        usjzb.frameworks = "Foundation","UIKit"
      end
    end

    uc.subspec 'Router' do |sr|
      sr.source_files = "SJZTools/Class/Router/*.{h,m}"
      sr.frameworks = "Foundation","UIKit"
    end
  end

end
