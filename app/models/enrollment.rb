# create_table "enrollments", force: true do |t|
#   t.integer  "course_id"
#   t.integer  "student_id"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class Enrollment < ActiveRecord::Base
  belongs_to(
    :course,
    class_name: "Course",
    foreign_key: :course_id,
    primary_key: :id
  )

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :student_id,
    primary_key: :id
  )
end
