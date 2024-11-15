class Api::V1::UsersController<ActionController::API
  def signup
    @user= User.new(user_params)
    if @user.save
      render json: { user: @user }, status: :created
    else
      render json: { errors: @user.errors.full_messages, error_code: 400 }, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: { user: @user }, status: :created

    else
      render json: { errors: "User doesn't exists" }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
