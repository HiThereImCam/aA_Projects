# == Schema Information
#
# Table name: answer_choices
#
#  id         :bigint           not null, primary key
#  answer     :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AnswerChoice < ApplicationRecord
end
