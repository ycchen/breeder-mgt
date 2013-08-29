class User < ActiveRecord::Base
    rolify
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    # devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    def avatar
      Gravatar.new(self.email).image_url
    end

    def admin?
      has_role?(:admin)
    end

    def user?
    	  has_role?(:user) || admin?
    end
end
