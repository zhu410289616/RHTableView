Pod::Spec.new do |s|

  s.name         = "RHTableView"
  s.version      = "1.0.3"
  s.summary      = "RHTableView: Expand from UITableView."
  s.homepage     = "https://github.com/zhu410289616/RHTableView"
  s.license      = { :type => "Apache", :file => "LICENSE" }
  s.author       = { "zhu410289616" => "zhu410289616@163.com" }

  s.ios.deployment_target = "6.0"
  
  s.source       = { :git => "https://github.com/zhu410289616/RHTableView.git", :tag => s.version.to_s }

  s.source_files  = "RHTableView/*.{h,m}" 
  s.requires_arc = true

end
