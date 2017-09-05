require 'json'

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'package.json')))

  s.name           = 'RNDocumentPicker'
  s.version        = package['version']
  s.license        = 'MIT'
  s.summary        = 'Document Picker for React Native using Document Providers'
  s.author         = { 'Elyx0' => 'elyx00@gmail.com' }
  s.homepage       = "https://github.com/Elyx0/react-native-document-picker"
  s.source         = { :git => 'https://github.com/Elyx0/react-native-document-picker', :tag => s.version }
  s.platform       = :ios, '8.0'
  s.preserve_paths = '*.js'

  s.dependency 'React'

  s.source_files = 'ios/RNDocumentPicker.{h,m}'
end

