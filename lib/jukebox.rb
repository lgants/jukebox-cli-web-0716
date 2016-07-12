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
  puts 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end 
end


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include? (response)
    puts "Playing #{response}"
  elsif response.to_i.to_s == response && (1..songs.length).include?(response.to_i)
    puts "Playing #{songs[response.to_i-1]}"
  else 
    puts "Invalid input, please try again"
  end 
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help 
  while true
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break 
    end 
  end 
end 





