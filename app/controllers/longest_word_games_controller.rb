require_relative "../../lib/game"

class LongestWordGamesController < ApplicationController

  def game
    @grid = generate_grid(9)
  end

  def result
    @attempt =params[:attempt]
    @start_time = Time.at(params[:start_time].to_i)
    @translation = get_translation(@attempt)
    @grid = params[:grid].chars
    @end_time = Time.now
    @time_score = @end_time - @start_time
    @score = compute_score(@attempt, @time_score)
    @score_total = score_and_message(@attempt, @translation, @grid, @time_score)
  end
end
