def fizzbuzz(start, ending)
  start.upto(ending) do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      puts "fizzbuzz"
    elsif n % 5 == 0
      puts "buzz"
    elsif n % 3 == 0
      puts "fizz"
    else
      puts n
    end
  end
end

fizzbuzz(1,15)
