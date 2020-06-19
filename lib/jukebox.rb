require_relative "../lib/jukebox"
require 'pry'

def help
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
    
end 

def list(songs)
  
  songs.each_with_index do |val, index|
    puts "#{index + 1}. #{val}"
  end 
end

def play(songs)
  
 puts "Please enter a song name or number:"
  input = gets.strip 
  songs.each_with_index do |song, index|
    if input == (index + 1).to_s || input == song
      puts "Playing #{song}"
      return song 
    else 
      puts "Invalid input, please try again"
    end
  end 
    puts "Invalid input, please try again"
end 

def exit_jukebox 
  
puts "Goodbye"
  
end 

def run(songs)
command = "" 
  while command  
  puts "Please enter a command:"
  command = gets.downcase.strip  
  case command 
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help 
      when 'exit'
        exit_jukebox
        break 
      else 
        help 
      end 
    end 
 
end 
