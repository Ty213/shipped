class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
    	t.string :name
    	t.string :description
    	t.integer :cont_needed
    	t.integer :budget
    	t.string :origin
    	t.string :destination
    	t.integer :user_id
      t.timestamps
    end
  end
end
