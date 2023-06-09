# frozen_string_literal: true

class Hangman
  def initialize
    setup
  end

  def setup
    @word = ''
    @guess = ''
    @round = 1
    @chosen = Hash.new(false)
  end

  def start_game
    setup
    @word = pick_word
    @guess = process_word
    process_round while @round <= 8
  end

  def pick_word
    words = []
    File.open('words.txt', 'r') do |file|
      file.each_line do |word|
        words += word
      end
      while @word.size < 5
        @word = words[rand(0...words.size)]
      end
    end
  end

  def process_word
    @guess.rjust(@word.size, '_')
  end

  def pick_letter
    loop do
      puts 'pick a letter not already chosen or enter -1 to save game'
      input = gets.chomp
      if input.match(/a-zA-Z/) && @chosen[input] == false
        @chosen[input] = true
        return input
      elsif input == '-1'
        save_game
      end
    end
  end

  def process_round
    input = pick_letter
    @word.each_with_index do |letter, index|
      @guess[index] = letter if letter.to_s == input.to_s
    end
    check_results
  end

  def save_game

  end

  def load_game

  end

  def check_results
    if @guess.match('_').nil?
      puts 'You have WON'
      @round = 10
    elsif @round == 8
      puts 'You have lost'
    end
  end

  def game_menu
    puts 'Enter name: '
    @player = gets.chomp

    loop do
      puts "Welcome #{@player}"
      puts '1: New game'
      puts '2: Load game'
      puts '3: Exit'

      input = gets.chomp
      case input
      when 1
        start_game
      when 2
        load_game
      when 3
        exit
      else
        puts 'ENTER A VALID INPUT'
      end
    end
  end
end
