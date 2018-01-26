class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.integer :student_id, null: false, default: 0, comment: '生徒ID'
      t.integer :teacher_id, null: false, default: 0, comment: '講師ID'
      t.date :date, null: false, default: DateTime.now, comment: '日付'
      t.string :content, null: false, default: "", comment: '内容'
      t.string :comment, null: false, default: "", comment: '備考'
      t.integer :homework_id, null: false, default: 0, comment: '宿題ID'

      t.timestamps
    end
  end
end
