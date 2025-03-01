def palindrome?(input)
   str = input.downcase.gsub(/[^a-z0-9]/, '')

    str.split('').each_with_index do |char, index|
        reciprocal_index = str.length - 1 - index
        reciprocal_char = str[reciprocal_index]

        return false unless char == reciprocal_char
    end

    true
end

puts "Enter your sentence:"

new_string = gets.chomp
puts

if palindrome?(new_string) == true 
    puts "#{new_string} is a palindrome!"
else
    puts "#{new_string} is not a palindrome!"
end