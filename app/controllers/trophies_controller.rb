class TrophiesController < ApplicationController
  def index
  end

  def show
    @trophy = Trophy.new params[:id].to_sym
  end
end
