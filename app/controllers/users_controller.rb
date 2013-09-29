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
    @user = User.new(user_params)
    # render params.inspect
    # @user.role_ids = params[:user][:role_ids] if params[:user]
    # @user.role_ids = Role.last.id
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a weclome Email after save
        UserMailer.welcome_email(@user).deliver
        flash[:notice] = "User was successfully created"
        format.html { redirect_to action: :index}
        format.json { render action: :show, status: :created, location: @user}
      else
        format.html { render action: :new}
        format.json { render json: @user.errors, status: :unprocessable_entity}
      end
    end
  
  end

  def edit
  end

  def update
    # render params.inspect
    respond_to do |format|
      if @user.update(user_params)
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
    flash[:notice] = "User was successfully deleted"
    redirect_to action: :index
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:display_name, :email, :password, :password_confirmation, :role_ids)
  end

end
