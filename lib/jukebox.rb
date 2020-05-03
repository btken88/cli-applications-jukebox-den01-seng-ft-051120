# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{(index + 1)}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if song_choice.to_i.between?(1, songs.length)
    puts "Playing #{songs[(song_choice.to_i-1)]}"
  elsif songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  puts "Goodbye"
  return
end
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

def run(songs)
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
      break
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
