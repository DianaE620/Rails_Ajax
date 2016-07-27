class UsersController < ApplicationController

  def index
    @usuarios = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    # usuario = User.new(name: params['user']['name'], email: params['user']['email'], password: params['user']['password'])
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path
    else
      @error = 1
      @errores = @user.errors
      render 'new'
    end

  end

  def edit
    #p params
    @user = User.find(params["id"])
  end

  def update
    @user = User.find(params["id"])
    @user.update(user_params)
    redirect_to root_path

  end

  def destroy
    user = User.find(params["id"])
    user.destroy 
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
