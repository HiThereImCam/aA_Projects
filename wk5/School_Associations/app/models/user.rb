# == Schema Information
#
# Table name: users
#has)m_many s
#  id         :bigint           not null, primary key
#  name       :stringstudent_
#  created_at :datetime         not null
#  updated_at :datetime         not null
# 
class User < ApplicationRecord
    validates :name, presence: true
    
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
    #has many is a method where we pass in a hash of key value pairs and performs SQL

    # belongs_to :course,
    #     primary_key: :id,
    #     foreign_key: :course_id

    has_many :enrolled_courses,
        through: :enrollments,
        source: :course #this is referencing the file not the class

end
