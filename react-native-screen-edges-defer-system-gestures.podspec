require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = 'react-native-screen-edges-defer-system-gestures'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['repository']['url']
  s.source       = { :git => "https://github.com/Jonovono/react-native-screen-edges-defer-system-gestures", :tag => "#{s.version}" }

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"

  s.source_files = "ios/**/*.{h,m}"
  s.dependency "React-Core"
end
