require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def list(arr)
  arr.each_with_index {|el, i|
    puts "#{i+1}. #{el}"
  }
end

def play(arr)
  puts "Please enter a song name or number:"
  usrSong = gets.chomp

  case usrSong
  when "1" || "#{arr[0]}"
    puts "Playing #{arr[0]}"
  when "2" || "#{arr[1]}"
    puts "Playing #{arr[1]}"
  when "3" || "#{arr[2]}"
    puts "Playing #{arr[2]}"
  when "4" || "#{arr[3]}"
    puts "Playing #{arr[3]}"
  when "5" || "#{arr[4]}"
    puts "Playing #{arr[4]}"
  when "6" || "#{arr[5]}"
    puts "Playing #{arr[5]}"
  when "7" || "#{arr[6]}"
    puts "Playing #{arr[6]}"
  when "8" || "#{arr[7]}"
    puts "Playing #{arr[7]}"
  when "9" || "#{arr[8]}"
    puts "Playing #{arr[8]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(arr)
  help
  usrCmd = ""
  while usrCmd != "exit"
  puts "Please enter a command:"
  usrCmd = gets.chomp
    case usrCmd
    when "help"
      help
    when "list"
      list(arr)
    when "play"
      play(arr)
    end
  end
  exit_jukebox
end

run(songs)
