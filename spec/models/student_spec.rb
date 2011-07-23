require 'spec_helper'

describe Student do
  
  before(:each) do
    @attr = { :name => "Example Student", :email => "student@example.com" }
  end
  
  it "should create a new instance given valid attributes" do
    Student.create!(@attr)
  end
  
  it "should require a name" do
    no_name_student = Student.new(@attr.merge(:name => ""))
    no_name_student.should_not be_valid
  end
  
  it "should require an email address" do
    no_email_student = Student.new(@attr.merge(:email => ""))
    no_email_student.should_not be_valid
  end
<<<<<<< HEAD
  
  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_student = Student.new(@attr.merge(:name => long_name))
    long_name_student.should_not be_valid
  end
  
  it "should accept valid email addresses" do
    addresses = %w[student@foo.com THE_STUDENT@foo.bar.org firs.last@foo.jp]
    addresses.each do |address|
      valid_email_student = Student.new(@attr.merge(:email => address))
      valid_email_student.should be_valid
    end
  end
  
  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com, user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_student = Student.new(@attr.merge(:email => address))
      invalid_email_student.should_not be_valid
    end
  end
  
  it "should reject duplicate email addresses" do
    # Put a user with given email address into the database.
    Student.create!(@attr)
    student_with_duplicate_email = Student.new(@attr)
    student_with_duplicate_email.should_not be_valid
  end
  
  it "should reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    Student.create!(@attr.merge(:email => upcased_email))
    student_with_duplicate_email = Student.new(@attr)
    student_with_duplicate_email.should_not be_valid
  end
=======
>>>>>>> f6b7d4b5dc5fd35a2ced48630d0e36ff232ac9c7
end

# == Schema Information
#
# Table name: students
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

