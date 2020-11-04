# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
    has_many :authored_polls
        through :author
        source :Poll
    
    has_many :responses
        through :respondent 
        source :Response
end
