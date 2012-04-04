class AddWebsiteToSubmission < ActiveRecord::Migration
  def self.up
    change_table :submissions do |t|
      t.string :website
    end
  end

  def self.down
    change_table :submissions do |t|
      t.remove :website
    end
  end
end
