

Pod::Spec.new do |s|


  s.name         = "XCBadgeButton"
  s.version      = "1.0"
  s.summary      = "封装了一个消息提示数字按钮,自动根据内容伸缩."
  s.homepage     = "https://github.com/xincheng123/XCBadgeButton.git"
  s.license      = "MIT"
  s.author             = { "Zhao Xincheng" => "1486191532@qq.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/xincheng123/XCBadgeButton.git", :tag => "1.0" }
  s.source_files  = "XCBadgeButton/Classes/*.{h,m,png}"
  s.requires_arc = true
end
