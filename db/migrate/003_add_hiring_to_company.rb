class AddHiringToCompany < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.boolean :hiring
    end
  end

  def self.down
    change_table :companies do |t|
      t.remove :hiring
    end
  end
end
