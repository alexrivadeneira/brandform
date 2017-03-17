class AddColumnsToSelection < ActiveRecord::Migration[5.0]
  def change
  	add_column :selections, :headerlink1text, :string
  	add_column :selections, :headerlink1url, :string
  	add_column :selections, :headerlink2text, :string
  	add_column :selections, :headerlink2url, :string
   	add_column :selections, :headerlink3text, :string
  	add_column :selections, :headerlink3url, :string
   	add_column :selections, :headerlink4text, :string
  	add_column :selections, :headerlink4url, :string
   	add_column :selections, :headerlink5text, :string
  	add_column :selections, :headerlink5url, :string 	  	
   	add_column :selections, :headerlink6text, :string
  	add_column :selections, :headerlink6url, :string 	  	
  	add_column :selections, :divbgimg, :string  	 
  	add_column :selections, :horizontalcampaigns, :boolean  	 
  end
end
