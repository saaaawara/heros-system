class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name, null: false, default: "", comment: '講師名'

      t.timestamps
    end
  end
end
