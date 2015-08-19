Pod::Spec.new do |s|
  s.name         = "FFChineseSort"
  s.version      = "0.0.1"
  s.summary      = "中文数组排序"
  s.homepage     = "https://github.com/liufan321/FFChineseSort"
  s.license      = "MIT"
  s.author       = { "Fan Liu" => "liufan321@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/liufan321/FFChineseSort.git", :tag => s.version }
  s.source_files  = "FFChineseSort", "FFChineseSort/Source/*.{h,m}"
  s.requires_arc = true
end
