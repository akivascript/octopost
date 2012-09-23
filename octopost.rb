require 'rubygems'
require 'stringex'
require 'CGI'

path		= ARGV[0] + "/source/_posts"
filename 	= CGI.unescape(ARGV[1])
filename	= filename.to_url
post 		= CGI.unescape(ARGV[2])
post.gsub!("\r", "\n")
post.gsub!("• • • • •", "<p class=\"separator\">• • • • •</p>")

filehandle = File.new(path + "/" + filename + ".markdown", "w")
filehandle.write(post)
filehandle.close
