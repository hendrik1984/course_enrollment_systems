# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Student.destroy_all
Course.destroy_all
Enrollment.destroy_all

# create students
student1 = Student.create(name: "John 1", email: "john1@gmail.com")
student2 = Student.create(name: "John 2", email: "john2@gmail.com")

# create courses
course1 = Course.create(title: "Rails Beginner", description: "Learn the basic of programming with ruby on rails")
course2 = Course.create(title: "Rails Intermediate", description: "Learn the Intermediate of programming with ruby on rails")

#Enrolls students in course
Enrollment.create(student: student1, course: course1)
Enrollment.create(student: student1, course: course2)
Enrollment.create(student: student2, course: course1)

