require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name         = "RNImageToPdf"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/Anyline/react-native-image-to-pdf"
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/frenberg/react-native-image-to-pdf.git", :branch => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"

end
