require "base64"
require "zlib"

#lines = ARGF.readlines
all_lines = File.readlines("rumia.txt").join("")
all_lines.gsub!(/ /, '0')
all_lines.gsub!(/#/, '1')
all_lines.delete!("\n")
raw_str = ''
while !all_lines.empty?
    raw_str += all_lines.slice!(0, 8).to_i(2).chr
end
compressed_str = Zlib::deflate(raw_str)
base64_str = Base64.strict_encode64(compressed_str)
res_str = Base64.decode64(base64_str)
print base64_str
