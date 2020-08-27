require 'colorize'
require_relative 'git'
class Main
  include Git
  def self.menu
    puts 'Main menu'.colorize(:cyan)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Exit'.colorize(:red)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      Git.puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Invalid choice'.colorize(:red)
      menu
    end
  end
end
Main.menu