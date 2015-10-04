# Remove turbolinks from application.html.erb
file_name = './app/views/layouts/application.html.erb'
text = File.read(file_name)
new_contents = text.gsub(/, 'data-turbolinks-track' => true/, "")
#Write changes to the file, use:
File.open(file_name, "w") {|file| file.puts new_contents }

# Remove turbolinks from Gemfile
file_name = './Gemfile'
text = File.read(file_name)
new_contents = text.gsub(/gem 'turbolinks'/, "#gem 'turbolinks'")
#Write changes to the file, use:
File.open(file_name, "w") {|file| file.puts new_contents }


require 'fileutils'
require 'tempfile'

# Open temporary file
tmp = Tempfile.new("extract")

# Write good lines to temporary file
open('app/assets/javascripts/application.js', 'r').each { |l| tmp << l unless l.chomp == '//= require turbolinks' }

# Close tmp, or troubles ahead
tmp.close

# Move temp file to origin
FileUtils.mv(tmp.path, 'app/assets/javascripts/application.js')
