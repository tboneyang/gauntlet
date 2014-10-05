class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
    	t.string :title
    	t.text :text
    	t.integer :score

      t.timestamps
    end
  end
end
