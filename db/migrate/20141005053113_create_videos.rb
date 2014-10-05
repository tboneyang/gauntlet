class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string 
      t.timestamps
    end
  end
end
