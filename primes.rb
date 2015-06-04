# Return integer from input
# Raises expection if not valid integer
def get_valid_int
  gets.chomp.to_i
end


class Fixnum
  def prime?
    return 0 if self == 0
    return 1 if self == 1
    (2..self-1).each do |n|
      if self % n == 0
        return false
      end
    end

    true
  end
end

def next_prime number
  number += 1
  while !number.prime?
    number += 1
  end
  number
end


arguments = []

puts "Enter number of args"
number_of_args = get_valid_int


number_of_args.times do
  puts "Enter argument"
  arguments.push get_valid_int
end


primes = arguments.map do |a|
  puts "arg #{a}"
  a = next_prime(a)
end

puts "arguments: "
puts arguments
puts "next primes "
puts primes

