
Pod::Spec.new do |s|
  s.name             = 'KKTimeWatch'
  s.version          = '0.1.0'
  s.summary          = 'KKTimeWatch 用来记录代码执行时间'
  s.description      = <<-DESC
  记录代码执行时间，追踪启动时间，代码执行效率，耗时等操作
                       DESC

  s.homepage         = 'https://github.com/kekeyezi/KKTimeWatch'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kekeyezi' => 'kekeyezi1992@163.com' }
  s.source           = { :git => 'https://github.com/kekeyezi/KKTimeWatch.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'KKTimeWatch/Classes/**/*'
end
