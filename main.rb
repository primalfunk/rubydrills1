# 1
# Write a script function that returns a passed string with letters in alphabetical order.
# Example string : 'webmaster'
# Expected Output : 'abeemrstw'

def sort_string(str)
  str.downcase.split('').sort().join('') #downcase to simplify the implementation
end

# 2   
# Write a script that accepts a string as a parameter and converts the first letter of each word of the string in upper case.
# Example string : 'the quick brown fox'
# Expected Output : 'The Quick Brown Fox'

def case_up(sentence)
  new_sentence = []
  sentence.split(' ').each do |word|
    new_word = []
    pos = 0
    word.split('').each do |letter|
      if pos == 0
        new_word << letter.upcase
      else
        new_word << letter
      end
      pos += 1
    end
    new_sentence << new_word.join('')
  end
  new_sentence.join(' ')
end

# 3
# Write a script that accepts a string as a parameter and find the longest word within the string.
# Example string : 'Web Development Tutorial'
# Expected Output : 'Development'

def find_longest_word(str)
  str.split(' ').max_by(&:length)
end

# 4
# Write a script that accepts a string as a parameter and counts the number of vowels within the string.
# Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do not count 'y' as vowel here.
# Example string : 'The quick brown fox'
# Expected Output : 5

def count_vowels(str)
  str.scan(/[aeiou]/).count
end

# 5 
# Write a script that accepts a number as a parameter and check the number is prime or not.
# Note : A prime number (or a prime) is a natural number greater than 1 that has no positive divisors 
# other than 1 and itself.

def is_prime(num)
  isp = true
  (2..num - 1).each do |n|
    if num % n == 0
      isp = false
    end
  end
  isp
end

# 6
#       Write a script which accepts an argument and returns the type.
# Note : There are six possible values that typeof returns: 
# object, boolean, function, number, string, and undefined.

def what_type(arg)
  arg.class
end

# 7
# Write a JavaScript function which will take an array of numbers and find the second lowest and second greatest numbers, respectively.
# Sample array : [1,2,3,4,5]
# Expected Output : 2,4

def penultimates(arr)
  new_arr = []
  arr.each_with_index do |val, i|
    if i == 1 || i == arr.length - 2
      new_arr << val
    end
  end
  new_arr
end

# 8
# Write a script to compute the factors of a positive integer.

def factors(int)
  factors = []
  (2..int - 1).each do |i|
    if int % i == 0
      factors << i
    end
  end
  factors
end

# 9
# Write a script to convert an amount to coins.
# Sample function : amountToCoins(46, [25, 10, 5, 2, 1])
# Here 46 is the amount. and 25, 10, 5, 2, 1 are coins.
# Output : 25, 10, 10, 1.

def convert_to_coins(num, arr)
  answer = []
  arr.each do |i|
    counter = 0
    while (num - i) >= 0
      num -= i
      counter += 1
      puts "New total: #{num}, element #{i}, counter #{counter}"
    end
    answer << i * counter
  end
  answer
end

# 10
#     Write a script to extract unique characters from a string.
# Example string : "thequickbrownfoxjumpsoverthelazydog"
# Expected Output : "thequickbrownfxjmpsvlazydg".

def unique_characters(str)
  str.split('').uniq.join('')
end

# 11 Write a script to get the number of occurrences of each letter in specified string.
# note - the regex positive lookahead ?= makes this a cinch
def letter_count(str)
  answer = {}
  str.split('').each do |i|
    answer[i] = str.scan(/(?=#{i})/).count
  end
  answer
end

# 12 Write a script that takes in an array and a number 
# and returns only the elements larger than the specified number.

def larger_than_only(arr, num)
  arr.select{ |i| i > num }
end

# 13     Write a script to get all possible subsets with a fixed length (for example 2) combinations in an array.
# Sample array : [1, 2, 3] and subset length is 2
# Expected output : [[2, 1], [3, 1], [3, 2], [3, 2, 1]].
# --note, I only solved for subset lengths as specified; [3,2,1] doesn't make sense as part of the solution as specified

def all_subsets(arr, len)
  arr.combination(len).to_a
end

# 14  Write a script that accepts two arguments, a string and a letter and the function will count the number of occurrences of the specified letter within the string.
# Sample arguments : 'w3resource.com', 'o'
# Expected output : 2

def count_spec_letter(str, ltr)
  str.downcase.scan(/(?=#{ltr})/).count
end

# 15 Write a script to find the first non-repeated character.
# Sample arguments : 'abacddbec'
# Expected output : 'e'

def first_non_repeat(str)
  str.split('').each do |i|
    if str.downcase.scan(/(?=#{i})/).count == 1
      return i
      exit
    end
  end
end

# 16 Bubble sort on an array

def bubble_sort(arr)
  loop do
    bubble = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        bubble = true
      end
    end
    break if not bubble
  end
  arr
end

# 17 Write a script that accepts a list of country names as input and returns the longest country name as output.
# Sample function : Longest_Country_Name(["Australia", "Germany", "United States of America"])
# Expected output : "United States of America"

def biggest_country(arr)
  arr.max_by(&:length)
end

#18  Write a function that accepts two integers and displays the larger.

def larger_int(int1, int2)
  int1 > int2 ? int1 : int2
end

# 19  Write a function using a conditional statement to find the sign of the product of three numbers. 
# Display an alert box with the specified sign. --note, disregarded this step for Ruby implementation
# Sample numbers : 3, -7, 2
# Output : The sign is -

def product_sign(a, b, c)
  (a.to_s + b.to_s + c.to_s).scan(/(?=-)/).count % 2 == 0 ? "+" : "-"
end

# 20       Write a function using a conditional statement to sort three numbers. 
# Display an alert box to show the result. --disregard for Ruby
# Sample numbers : 0, -1, 4
# Output : 4, 0, -1

def sort_three(a, b, c) # permutations of 3 unalike objects are: 3! = 6, so let's do a tree
  if a < b
    if a < c
      if b < c
        puts "#{a}, #{b}, #{c}"
      else
        puts "#{a}, #{c}, #{b}"
      end
    else
      puts "#{c}, #{a}, #{b}"
    end
  else
    if b < c
      if c < a
        puts "#{b}, #{c}, #{a}"
      else
        puts "#{b}, #{a}, #{c}"
      end
    else
      puts "#{c}, #{b}, #{a}"
    end
  end
end

#21 Write a function with a conditional statement to find the largest of five numbers. 
# Display an alert box to show the result. --disregard for Ruby
# Sample numbers : -5, -2, -6, 0, -1
# Output : 0

=begin a personal note -> I didn't attempt an if/else tree like the above because there are 5! or 120 ways
to arrange 5 unalike elements. Sure, you might say, if you fix one element then maybe you would only 
have to write 4! or 24. Maybe, I don't know. But 24 is still an unforgivable, barbaric torture. In fact, 
as a sort of protest to the very idea, we will offer a solution in one line.
=end # personal note

def largest_of_five(a, b, c, d, e)
  "#{a}-#{b}-#{c}-#{d}-#{e}".split('-').max_by{|number| number} 
end

# 22 Write a for loop that will iterate from 0 to 15. For each iteration, it will check 
# if the current number is odd or even, and display a message to the screen.
# Sample Output :
# "0 is even"
# "1 is odd"
# "2 is even"

def odd_even
  (0..15).each do |num|
    num % 2 == 0 ? res = "#{num} is even" : res = "#{num} is odd"
    puts res
  end
end

# 23 Write a function which iterates the integers from 1 to 100. For multiples 
# of three console.log "Fizz" instead of the number and for the multiples of five console.log "Buzz". 
# For numbers which are multiples of both three and five console.log "FizzBuzz".

def fizz_buzz
  (1..100).each do |num|
    num % 15 == 0 ? res = "FizzBuzz" : num % 5 == 0 ? res = "Buzz" : num % 3 == 0 ? res = "Fizz" : res = "#{num}"
    puts res
  end
end

# 24 Write a function to construct the following pattern, using a nested for loop.
=begin
*  
* *  
* * *  
* * * *  
* * * * *
=end

def make_a_triangle
  star_counter = "*"
  (1..5).each do |row|
    puts star_counter
    star_counter += "*"
  end
end

# 25 Write a function to sum the multiples of 3 and 5 under 1000.

def custom_sum
  answer = 0
  (1..999).each do |num|
    (num % 3 == 0 || num % 5 == 0) ? answer += num : ""
  end
  answer
end

# 26 Write a script to check whether an input is a string or not.

def is_string(obj)
  obj.is_a? String
end

# 27 Write a script to check whether a string is blank or not.

def is_blank(str)
  str == "" ? true : false
end

# 28 Write a script to split a string and convert it into an array of words.

def split_string(str)
  str.split(' ')
end

# 29 Write a script to remove specified number of characters from a string. (Truncate to n digits)

def trunc_string(str, num)
  str[0...num]
end

# 30 Write a script to capitalize the first letter of a string.

def caps(str)
  str[0] = str[0].capitalize
  str
end

# 31 Write a script to capitalize the first letter of each word in a string.

def caps_each(str)
  new_str = []
  str.split(' ').each do |i|
    new_arr << caps(i)
  end
  new_arr.join(' ')
end

# 32 Write a script that takes a string which has lower and upper case letters as a parameter 
# and converts upper case letters to lower case, and lower case letters to upper case.

def switch_case(str)
  new_arr = []
  str.split('').each do |i|
    i != i.capitalize ? new_arr << i.capitalize : new_arr << i.downcase
  end
  new_arr.join('')
end

# 33 Write a script which concatenates a given string 'n' times (default is 1).

def concat_str_times(str, n)
  new_str = str * n
  new_str
end



