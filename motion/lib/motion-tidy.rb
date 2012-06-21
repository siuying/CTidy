require "motion-tidy/version"

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion-tidy/*.rb')).each do |file|
    app.files.unshift(file)
  end

  app.pods ||= Motion::Project::CocoaPods.new(app)
  app.pods.dependency do |s|
    s.name     = 'CTidy'
    s.version  = '0.2.1.pre'
    s.license  = 'Simplified BSD License'
    s.summary  = "libtidy Objective-C wrapper"
    s.homepage = 'https://github.com/siuying/CTidy'
    s.author   = { 'Francis Chong' => 'francis@ignition.hk' }
    s.source   = { :git => 'git://github.com/siuying/CTidy.git', :commit => 'd13e7f13e07ec39c56b93a73b8bd3e335d86a0c8' }
    s.source_files = 'CTidy/CTidy.{h,m}', 'libtidy/*.{c,h}'
    s.clean_paths  = '*.xcodeproj'
  end
end
