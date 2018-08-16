require 'colorize'

def puts_git(cmd)
  puts "git #{cmd} -h"
  menu
end

def menu
  puts "Main Menu".colorize(:cyan)
  puts "1: Enter Git Command"
  puts "2: Exit"
  case gets.to_i
    when 1 
      puts 'Enter Git Command'
      puts_git(gets.strip)
      menu
    when 2
      exit
    else 
      puts "Invalid Choice"
      menu
  end
end

menu