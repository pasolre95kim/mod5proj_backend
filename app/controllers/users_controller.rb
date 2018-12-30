class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile

      render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
      @user = User.create(user_params)
      if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token, error:false}, status: :created
      else
          render json: { error: 'failed to create user', error: true}, status: :not_acceptable
      end
  end


  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :email, :phone_number)
  end

end
