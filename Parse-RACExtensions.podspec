Pod::Spec.new do |s|
  s.name         = "Parse-RACExtensions"
  s.version      = "1.0.0"
  s.summary      = "ReactiveCocoa extensions for Parse.com's SDK"
  s.homepage     = "https://github.com/mhupman/Parse-RACExtensions"
  s.license      = 'MIT'
  s.author       = { "mhupman" => "mhupman@citrrus.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/mhupman/Parse-RACExtensions.git", :tag => s.version.to_s }
  s.source_files = 'Parse-RACExtensions'
  s.requires_arc = true
  s.dependency 'Parse', '~> 1.2.10'
end
