
Pod::Spec.new do |s|
  s.name         = "Board"
  s.version      = "0.0.13"
  s.summary      = "A model representation of whiteboard."
  s.description  = "This library contains C++ representation of whiteboard."
  s.license      = { :type => "No License", :file => "LICENSE" }
  s.homepage     = "https://github.com/daher-alfawares"
  s.author       = { "Daher Alfawares" => "daher.alfawares@live.com" }
  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "https://github.com/daher-alfawares/whiteboard-board.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Board/**/*.{swift,hpp,cpp,h,m,mm}"

end
