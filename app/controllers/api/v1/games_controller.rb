class Api::V1::GamesController < ApplicationController
  # before_action :find_user, only: [:update]
  def index
    games = Game.all
    render json: games
  end

  def create
    game = Game.create(game_params)
    render json: game
  end

  # def update
  #   @note.update(note_params)
  #   if @note.save
  #     render json: @note, status: :accepted
  #   else
  #     render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def game_params
    params.permit(:accuracy, :wpm, :user_id)
  end

  # def find_user
  #   @user = User.find(params[:id])
  # end
end
