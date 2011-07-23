class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :students, :email, :unique => true
  end

  def self.down
    remove_index :students, :email
  end
end
