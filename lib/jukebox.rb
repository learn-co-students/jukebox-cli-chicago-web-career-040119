def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.chomp
  songs.each_with_index do |song, index|
    if user_selection == song || user_selection.to_i == index + 1
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run_helper
  puts "Please enter a command:"
  user_response = gets.chomp
  if user_response == "exit" || user_response == "help" || user_response == "play" || user_response == "list"
    return user_response
  else
    puts "Invalid input, please try again"
    run_helper
  end
end

def run(songs)
  help
  user_response = run_helper
  while user_response != "exit"
    if user_response == "play"
      play(songs)
      user_response = run_helper
    elsif user_response == "help"
      help
      user_response = run_helper
    elsif user_response == "list"
      list(songs)
      user_response = run_helper
    end
  end
  exit_jukebox
end












#kdfns
