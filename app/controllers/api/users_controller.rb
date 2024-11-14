module Api
  class UsersController < ApplicationController
    def create
      user_count = User.count
      @user = User.new(user_params.merge(queue_position: user_count + 1))

      if @user.save
        render json: { message: "##{user_count + 1}" }, status: :created
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :surname, :portfolio_link, :company)
    end
  end
end
