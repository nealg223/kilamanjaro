class Students < ActiveRecord::Migration
  def self.up
  end

  def self.down
    drop_table :students
  end
end
