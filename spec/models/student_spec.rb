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

