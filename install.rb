# Install hook code here
puts "Copying files..."
dir = "javascripts"
FileUtils.cp_r(File.join(File.dirname(__FILE__) , "javascripts", "jquery.notice.js"), File.join(RAILS_ROOT, "public", "javascripts", "jquery.notice.js"))
FileUtils.cp_r(File.join(File.dirname(__FILE__) , "stylesheets", "jquery.notice.css"), File.join(RAILS_ROOT, "public",  "stylesheets", "jquery.notice.css"))
puts "Files copied - Installation complete!"
