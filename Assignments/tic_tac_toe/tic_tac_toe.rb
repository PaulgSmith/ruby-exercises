# frozen_string_literal: true

# Tic Tac Toe game class. Stores information and has game functions.
class TicTacToe
  def initialize
    setup
  end

  def start_game
    puts 'This is Tic Tac Toe'
    puts "\nEach round a Player will choose which spot to place their letter"
    puts "Player 1 will place X's and Player 2 will place O's"
    puts 'First to get 3 of their letters either vertically, horizontally or diagonally in a row wins'
    print_menu
  end

  def play_game
    player_choice while @round < 9 || @winner == ''
  end

  def player_choice
    pick = false
    until pick
      puts 'Select number to choose spot:'
      print_game
      input = gets.chomp

      case input
      when '1'
        if @grid[0][0] == '1'
          @grid[0][0] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '2'
        if @grid[0][1] == '2'
          @grid[0][1] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '3'
        if @grid[0][2] == '3'
          @grid[0][2] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '4'
        if @grid[1][0] == '4'
          @grid[1][0] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '5'
        if @grid[1][1] == '5'
          @grid[1][1] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '6'
        if @grid[1][2] == '6'
          @grid[1][2] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '7'
        if @grid[2][0] == '7'
          @grid[2][0] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '8'
        if @grid[2][1] == '8'
          @grid[2][1] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      when '9'
        if @grid[2][2] == '9'
          @grid[2][2] = @round.even? ? 'O' : 'X'
          pick = true
        else
          puts 'Please select a valid option'
        end
      else
        puts 'Please select a valid option'
      end
    end
    @round += 1
    end_round
  end

  def end_round
    declare_results if check_win
  end

  def print_game
    (0...3).each do |i|
      puts
      (0...3).each do |j|
        print @grid[i][j]
      end
    end
    puts
  end

  def print_menu
    loop do
      puts 'Press 1 to start new game'
      puts 'Press 2 to close Tic Tac Toe'
      input = gets.chomp

      case input
      when '1'
        setup
        play_game
      when '2'
        exit
      else
        puts "\nPLEASE ENTER A CORRECT INPUT"
      end
    end
  end

  def declare_results
    puts "The winner is #{@winner}"
    print_game
    @round = 10
  end

  def check_win
    3.times do |i|
      if @grid[0][i] == @grid[1][i] && @grid[0][i] == @grid[2][i]
        @winner = @round.even? ? 'Player 2' : 'Player 1'
        return true
      elsif @grid[i][0] == @grid[i][1] && @grid[i][2] == @grid[i][0]
        @winner = @round.even? ? 'Player 2' : 'Player 1'
        return true
      end
    end
    if @grid[0][0] == @grid[1][1] && @grid[2][2] == @grid[0][0]
      @winner = @round.even? ? 'Player 2' : 'Player 1'
      return true
    elsif @grid[0][2] == @grid[1][1] && @grid[2][0] == @grid[0][2]
      @winner = @round.even? ? 'Player 2' : 'Player 1'
      return true
    end
    false
  end

  private

  def setup
    @grid = [['1', '2', '3'],
             ['4', '5', '6'],
             ['7', '8', '9']]

    @round = 1
    @winner = ''
  end
end

start = TicTacToe.new
start.start_game
