#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'umengshare'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'UMCCommon'
  s.dependency 'UMCSecurityPlugins'
  s.dependency 'UMCShare/Social/ReducedWeChat'
  s.dependency 'UMCShare/Social/ReducedQQ'
  s.dependency 'UMCShare/Social/ReducedSina'
  #s.dependency 'UMCShare/Social/Facebook'
  #s.dependency 'UMCShare/Social/Twitter'
  s.ios.deployment_target = '8.0'
  s.static_framework = true
end

