class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    my_birthday = Time.parse("July 26, 1988")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = "my birthday was #{seconds_since_i_was_born} seconds ago"

    first = "Prashob"
    last = "Menon"

    @first_then_last = first + " " + last

    @last_then_first = last + ", " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_selection = rand(1..3)

    if the_selection > 2
      @your_output = "The number is #{the_selection} therefore this is rock."
      @game_outcome = "Because the number is #{the_selection} you would have tied with your opponent, who chose rock."
    elsif the_selection > 1
      @your_output = "The number is #{the_selection} therefore this is scissors."
      @game_outcome = "Because the number is #{the_selection} you would have lost to your opponent, who chose rock."
    else
      @your_output = "The number is #{the_selection} therefore this is paper."
      @game_outcome = "Because the number is #{the_selection} you would have beaten your opponent, who chose rock."
    end



    render("programs/first_program.html.erb")
  end

  def second_program
    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares


    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
  
    # Your code goes below.

    multiples_array =[]

    numbers.each do |num|

      if (num%5) == 0 || (num%3) == 0
        multiples_array.push(num)
      end
    end

    @your_output = multiples_array.sum

    render("programs/third_program.html.erb")
  end
end
