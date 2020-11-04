# == Schema Information
#
# Table name: responses
#
#  id                :bigint           not null, primary key
#  answer_choice_id  :integer          not null
#  user_resposnse_id :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Response < ApplicationRecord
end
