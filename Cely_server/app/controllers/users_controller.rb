class UsersController <ApplicationController

  #Get /users
  def index
    @users = User.all
  end
  #Get /articles/:id
  def show

    @user = User.find(params[:id])

  end

  def new
    @user= User.new
  end


  #POST /user
  def create
    @user= User.new(nombre: params[:user][:nombre])
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end
