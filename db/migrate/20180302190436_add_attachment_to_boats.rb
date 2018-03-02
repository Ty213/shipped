class AddAttachmentToBoats < ActiveRecord::Migration[5.1]
 def up
 	add_attachment :boats, :avatar
 end

 def down
 	remove_attachment :boats, :avatar
 end
end
