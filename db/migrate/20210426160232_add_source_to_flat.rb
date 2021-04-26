class AddSourceToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :source, :string
  end
end
