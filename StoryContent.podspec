Pod::Spec.new do |s|
  s.name        = "StoryContent"
  s.version     = "0.5.10"
  s.license     = "MIT"
  s.homepage    = "https://breffi.ru/en/storyclm"
  s.author      = "Breffi LLC"
  s.summary     = "StoryContent is the module of Story platform"
  s.description	= "<<-DESC
                     Story— a digital-platform developed by BREFFI, allowing you to create interactive presentations with immediate feedback on the change in the customer perception of the brand and the representative’s activity.
                   DESC"
  s.source      = { :git => "https://github.com/storyclm/story-content-ios.git", :tag => s.version.to_s }
  
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-all_load' }

  s.source_files        = "StoryContent.framework/Headers/*.h"
  s.public_header_files = "StoryContent.framework/Headers/*.h"
  s.vendored_frameworks = "StoryContent.framework"

  s.ios.deployment_target	= "11.0"
  s.swift_version         	= "4.2"
  s.requires_arc          	= true

  s.dependency 'Alamofire', '~> 4.8'
  s.dependency 'Kingfisher', '~> 5.6'
  s.dependency 'ZIPFoundation', '~> 0.9'
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
