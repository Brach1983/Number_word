def user_input
  user_input = gets.strip
  arr = str.split
  counter = 0
  most_repeat_letter_word = nil

  arr.each do |w|
    candidate = w.length - w.split('').uniq.length
    if candidate  > counter
      most_repeat_letter_word = w
      counter = candidate
    end
  end
  puts most_repeat_letter_word
end


def menu
  choice = gets.strip.to_i
  case choice
  when 1
    user_input
  when 2
    exit
  else
    puts "Invalid Choice\n\n"
    print_menu
  end
end

def print_menu
  puts "Letters Menu"
  puts "1) Your Input"
  puts "2) Quit"
  menu
end

print_menu
