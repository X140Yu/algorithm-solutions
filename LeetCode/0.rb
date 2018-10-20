
number = ARGF.argv[0]

comment = `leetcode show -gl ruby #{number}`.each_line.map{ |l| "\# #{l}" }.join

return unless comment or $?.exist_status != 0

file_name = Dir.glob("#{number}\.*\.rb").first

return unless file_name

code = File.read(file_name)

content = comment + "\n\n" + code

File.open(file_name, 'w') do |f|
  f.puts content
end

system "code #{file_name}"
