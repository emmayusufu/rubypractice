filename = "sample.txt"

begin
  text = File.read(filename).downcase
rescue Errno::ENOENT
  puts "File not found"
ensure
  puts "Finished attempting to read file."
end


words = text.gsub(/[^a-z0-9\s]/i, '').split

frequency = Hash.new(0)

words.each do |n|
  frequency[n]+=1
end

puts "📊 Word Frequency:"
frequency.sort_by { |_, count| -count }.each do |word, count|
  puts "#{word}: #{count}"
end