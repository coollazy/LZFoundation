Pod::Spec.new do |s|
  s.name            = "LZFoundation"
  s.version         = "1.0.0"

  s.swift_version   = "5.10.0"
  s.summary         = "Native Foundation Extensions"
  s.description     = <<-DESC
                      Native Foundation Extensions.
                      DESC

  s.homepage        = "https://github.com/coollazy/LZFoundation"
  s.license         = "MIT"
  s.author          = { "ven.wu" => "ven.wu.github@gmail.com" }
  s.platform        = :ios, "12.0"
  s.source          = { :git => "https://github.com/coollazy/LZFoundation.git", :tag => s.version }
  s.source_files    = "Sources/**/*.{h,m,swift}"
end
