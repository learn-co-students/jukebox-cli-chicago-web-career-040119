def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs)
  songs.each do |song, location|
    puts "#{song}"
  end
end


def play(songs)
  puts "Please enter a song name:"
  user_selection = gets.chomp
  songs.each do |song, location|
    if user_selection == song
      puts "Playing #{song}"
      system "open #{location}"
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
