require 'pry'
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
# Add your code here
#def say_hello(name)
 # "Hi #{name}!"
#end
# 
#puts "Enter your name:"
#users_name = gets.strip
# 
#puts say_hello(users_name)

def help
  puts "I accept the following commands:" 
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (song_array)
  song_array.each_with_index do |song, index|
    list_number = index + 1
    puts "#{list_number}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def play (songs)
  puts "Please enter a song name or number:"
  song_input = gets.strip
    if song_input.to_i <= 9 && song_input.to_i > 0
      song_index = song_input.to_i - 1
      puts "Playing #{songs[song_index]}"
    end
    if songs.include? song_input
      puts "Playing #{song_input}"
    elsif song_input.to_i <= 0 || song_input.to_i > 9
      puts "Invalid input, please try again"
      song_input = gets.strip
    end
end

def run (songs)
  puts "Please enter a command:"
  user_input = gets.strip
  until user_input == "exit" do
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.strip
    end
    if user_input == "play"
      play
      puts "Please enter a command:"
      user_input = gets.strip
    end
    if user_input == "list"
      list (songs)
      puts "Please enter a command:"
      user_input = gets.strip
    end
  end 
  exit_jukebox
end
