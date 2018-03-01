class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
    	t.string :name
    	t.integer :max_cont
    	t.string :location
    	t.integer :cost
    	t.integer :user_id
      t.timestamps
    end
  end
end
