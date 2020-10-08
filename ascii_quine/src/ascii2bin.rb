#lines = ARGF.readlines
lines = File.readlines("rumia.txt")
lines.each do |line|
    line.gsub!(/ /, '0')
    line.gsub!(/#/, '1')
    print ("%d,\n" % line.to_i(2))
end