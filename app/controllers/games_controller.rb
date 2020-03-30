class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    result = []
    result << params[:word]
    @letters_got = params[:letters].split(' ').sort

    if result.sort != @letters_got
      @results = "Sorry, but #{params[:word]} can't be built out of #{@letters}"
    end
  end
end
