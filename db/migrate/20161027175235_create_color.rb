class CreateColor < ActiveRecord::Migration[5.0]
  def up
  	create_table :colors do |t|
  		t.string :communityurl
  		t.string :coloraccent1
   		t.string :coloraccent2
  		t.string :colorhighlight
 		
  	end
  end

  def down
  	drop_table :colors
  end
end