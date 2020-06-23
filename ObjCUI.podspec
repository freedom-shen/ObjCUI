
Pod::Spec.new do |s|
  s.name             = 'ObjCUI'
  s.version          = '0.1.1'
  s.summary          = '使用Objc编写类似声明氏UI'

  s.license  = 'MIT'
  s.watchos.deployment_target = '2.0'

  s.homepage         = 'https://github.com/freedom-shen/ObjCUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.author           = { '沈晓敏' => 'xxkqw1992@gmail.com' }
  s.source           = { :git => 'https://github.com/freedom-shen/ObjCUI', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ObjCUI/Classes/**/*'
  s.public_header_files = 'ObjCUI/Classes/**/*.h'
  s.dependency 'Masonry'

end
