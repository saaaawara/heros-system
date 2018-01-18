class AddNameToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :name, :string
  end
end
