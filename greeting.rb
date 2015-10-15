 def greeting
	if ARGV.length < 2
	  p "input error"
	else
	 loop = ARGV.length - 1
	 n = 1
     loop.times do |i|
	   greet = ARGV[0]
	   name = ARGV[n]
	   puts "#{greet} #{name}"
	   n +=1
      end
	end
 end

greeting