# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    
    attr_reader :password
    after_initialize :ensure_session_token

    validates :username, :email, :session_token, presence: true
    validates :username, length: {maximum: 18}
    validates :session_token, :email, :username, uniqueness: true

    validates :password, length: { minimum: 6 }, allow_nil: true

    def generate_session_token
        self.session_token = SecureRandom::urlsafe_base64
    end

    # setting the password
    def password=(password)
        @password = password

        self.password_digest = BCrypt::Password.create(password)
    end

    # reset session_token
    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest) == password 
    end 

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def self.find_by_credentials(email,password)
        # searching the :username column on the db for username
        @user = User.find_by(email: username)  
        
        # now based on the username, find the password
        # also don't forget to use flash for the user

        if user && user.password(password)
            user
        else
            return nil
        end 

    end

end
