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
