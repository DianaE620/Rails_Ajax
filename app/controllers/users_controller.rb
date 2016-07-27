class UsersController < ApplicationController


  def index
    # sleep 2
    @usuarios = User.all
  end

  def new
    @user = User.new
  end

  def create
    # usuario = User.new(name: params['user']['name'], email: params['user']['email'], password: params['user']['password'])
    @user = User.new(user_params)

    if @user.save
      #Aqui ya podriamos hacer un redirect_to con ajax directo
      #redirect_to root_path

      #Pero vamos a practicar
      respond_to do |format|
        format.html
        format.js
      end
    else
      #@error = 1
      @errores = @user.errors
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

  #Haciendolo con ajax directo
  def destroy
    user = User.find(params["id"])
    user.destroy 
    p "lala"
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
