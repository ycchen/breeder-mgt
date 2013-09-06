class User < ActiveRecord::Base
    rolify
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    # devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    # after_create :assign_user_role

    validate :display_name,:email, presence: true, uniqueness: true

    def avatar
      Gravatar.new(self.email).image_url
    end

    def admin?
        has_role?(:admin)
    end

    def user?
        has_role?(:user) || admin?
    end

    private

    # def assign_user_role
    #     self.add_role :user
    # end
end
