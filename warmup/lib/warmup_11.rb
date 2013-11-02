class Warmup11
  def return_multiple_sum(max)
    array = (1...max).to_a
    array.each do |number|
      if number % 5 == 0 || number % 3 == 0
        total += number
      end
    end
    puts total
  end
end

Warmup11.return_multiple_sum(1000)

