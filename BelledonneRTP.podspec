Pod::Spec.new do |s|
  s.name = 'BelledonneRTP'
  s.version = '1.0.0'
  s.summary = 'Linphone for Swift'
  s.license = 'MIT'
  s.authors = { "Alsey Coleman Miller" => "colemancda.github.io" }
  s.homepage = 'http://github.com/coleman/LinPhoneSwift'
  s.description = 'Swift library for Linphone'
  s.requires_arc = true
  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.10'
  s.source = { :path => '*' }
  s.source_files = 'Sources/BelledonneRTP/*.swift'
  s.ios.vendored_frameworks = '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/*.framework'
  s.ios.xcconfig = { 
    'ENABLE_BITCODE' => 'NO',
    'SWIFT_INCLUDE_PATHS' => '$SRCROOT/../liblinphone-sdk/Modules/CBelledonneRTP $SRCROOT/../liblinphone-sdk/Modules/CBelledonneToolbox', 
    'FRAMEWORK_SEARCH_PATHS' => '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/Frameworks',
    'LIBRARY_SEARCH_PATHS' => '$SRCROOT/../liblinphone-sdk/iOS/apple-darwin/lib',
    'OTHER_LDFLAGS' => '-framework ortp -framework bctoolbox'
   }
   s.dependency 'BelledonneToolbox'
end