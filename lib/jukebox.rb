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
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
 end
end

def play(songs)
  puts "Please enter a song name or a number:"
  puts users_answer = gets.chomp
  songs.each_with_index do |song, index|
    if users_answer.to_i == index
      puts "Playing #{songs[index-1]}"
    elsif users_answer == song
      puts "Playing #{song[index]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  users_answer = gets.chomp
    while users_answer != "exit"
      case users_answer
        when "help"
          help
          puts "Please enter a command:"
          users_answer = gets.chomp
        when "list"
          list(songs)
          puts "Please enter a command:"
          users_answer = gets.chomp
        when "play"
          play(songs)
          puts "Please enter a command:"
          users_answer = gets.chomp
        else
          puts "Invalid input, please try again:"
          users_answer = gets.chomp
        end
      end
      exit_jukebox
end
