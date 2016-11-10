class QuerysController < ApplicationController
  def show_message
    # p '*' * 30
    @message = params["first_name"]
    @message2 = params["last_name"]
    # p '*' * 30
    render 'new_message.html.erb'
  end

  def insult
    @message = params["message"]
    render 'rude.html.erb'
  end

  def demo
    @name = params["name"]
    render 'demo.html.erb'
  end

  def guess
    answer = 32
    guess = params["new_guess"].to_i
    if answer > guess
      @result = "Your guess was too low"
    elsif answer < guess
      @result = "Your guess was too high"
    else
      @result = "you win"
    end


    render 'game.html.erb'
  end

  def counter
    @count = params["count"].to_i
    # @count += 1
    render 'counter.html.erb'
  end

  def wild
    @name = params["idaho"]
    render 'wild.html.erb'
  end

  def show_the_message
    @message = params["message"]
    render 'show_the_message.html.erb'
  end

end
