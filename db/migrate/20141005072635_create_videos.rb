class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
	t.string :token
      t.timestamps
    end
  end
end
