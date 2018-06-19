class Api::V1::UsersController < ApplicationController
  # before_action :find_user, only: [:update]
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
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

  def user_params
    params.permit(:name)
  end

  # def find_user
  #   @user = User.find(params[:id])
  # end
end
