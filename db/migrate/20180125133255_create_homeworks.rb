class CreateHomeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :homeworks do |t|
      t.integer :student_id, null: false, default: 0, comment: '生徒ID'
      t.integer :teacher_id, null: false, default: 0, comment: '講師ID'
      t.date :date, null: false, default: DateTime.now, comment: '日付'
      t.boolean :flag, null: false, default: false, comment: '宿題の有無'
      t.string :content, null: false, default: "", comment: '内容'

      t.timestamps
    end
  end
end
