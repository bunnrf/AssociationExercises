# create_table "users", force: true do |t|
#   t.string   "name"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class User < ActiveRecord::Base
  has_many(
    :enrollments,
    class_name: "Enrollment",
    foreign_key: :student_id,
    primary_key: :id
  )

  has_many(
    :enrolled_courses,
    through: :enrollments,
    source: :course
  )
end
