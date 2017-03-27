class AddAnimatedToSelection < ActiveRecord::Migration[5.0]
  def change
  	add_column :selections, :animated, :boolean
  	add_column :selections, :animatedbg, :string
  end
end
