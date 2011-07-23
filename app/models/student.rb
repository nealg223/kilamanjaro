class Student < ActiveRecord::Base
  attr_accessible :name, :email
  
<<<<<<< HEAD
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 }
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false}
=======
  validates :name, :presence => true
  validates :email, :presence => true
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

