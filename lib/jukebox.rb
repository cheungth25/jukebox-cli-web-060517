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

def list(song_array)
  song_array.each_with_index { |song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(song_array)
  puts "Please enter a song name or number:"
  song_sel = gets.chomp
  if song_sel.to_i > 0 && song_sel.to_i < 10
    puts "Playing #{song_array[song_sel.to_i - 1]}"
  elsif song_array.include?(song_sel)
    puts "Playing #{song_sel}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  help
  loop do
    puts "Please enter a command:"
    user_ans = gets.chomp
    case user_ans
    when "help"
      help
    when "list"
      list(song_array)
    when "play"
      play(song_array)
    when "exit"
      exit_jukebox
      break
    end
  end
end
