def process_file(filename)
  unless File.exist?(filename)
    puts "❌ Files does not exist"

    return
  end

  content = File.read(filename)

  yield content if block_given?
end

def print_usage
  puts <<~USAGE
    Usage: ruby file_processor.rb <filename> [--lines | --words | --custom]

    Options:
      --lines    Count and print number of lines
      --words    Count and print number of words
      --custom   Run custom logic using blocks
  USAGE
end


filename = ARGV[0]
option = ARGV[1]

if filename.nil? || option.nil?
  print_usage
  exist
end


case option
when "--lines"
  process_file(filename) do |text|
    puts "📄 Line count: #{text.lines.count}"
  end

when '--words'
  process_file(filename) do |text|
    words = text.downcase.scan(/\b[\w']+\b/)
    puts "📝 Word count: #{words.count}"
  end

when "--custom"
  process_file(filename) do |text|
    puts "Running custom block logic..."
    lines = text.lines.reject { |line| line.strip.empty? }
    puts "Non-empty lines: #{lines.count}"
    puts "First 3 lines:"
    puts lines.first(3)
  end

else
  puts "❗ Unknown option: #{option}"
  print_usage
  
end