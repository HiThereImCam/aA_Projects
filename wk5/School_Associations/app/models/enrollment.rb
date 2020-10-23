# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    validates :course_id, :student_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User

    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course
end
#if there is a foreign key in a table, there is a belongs to association bc only references 1 course and 1 student
#belongs to is saying go to users table and find the id that matches this student id (opposite of has many)
#will always return only one record
