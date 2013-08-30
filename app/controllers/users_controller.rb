class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :is_admin?
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(user_params)

    render params.inspect

    # respond_to do |format|
    #   if @user.save
    #       # if params[:roles] == 'admin'
    #       #   @user.add_role(:admin)
    #       # else
    #       #   @user.add_role(:user)
    #       # end
    #     format.html { redirect_to action: :index, notice: 'User was successfully created'}
    #     format.json { render action: :show, status: :created, location: @user}
    #   else
    #     format.html { render action: :new}
    #     format.json { render json: @user.errors, status: :unprocessable_entity}
    #   end
    # end
  
  end

  def edit
  end

  def update
    # render params.inspect
    respond_to do |format|
      if @user.update(user_params)
         if params[:roles] == 'admin'
            @user.add_role(:admin)
          else
            @user.add_role(:user)
          end
        format.html { redirect_to users_path, notice: 'User was successfully updated'}
        format.json { head :no_content}
      else
        format.html { render action: 'edit'}
        format.json { render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @user.destroy
    redirect_to action: :index
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
