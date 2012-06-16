# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bubble-wrap'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'stobbene'
  app.identifier = 'com.thmdev.stobbene'
  app.version = '1.0'
  app.info_plist['CFBundleURLTypes'] = [{'CFBundleURLSchemes' => ['fb108912452551780']}]
  
  app.pods do
    dependency 'Facebook-iOS-SDK'
    dependency 'AFNetworking'
  end
  
end
