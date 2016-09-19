class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :name, :string
      t.column :content, :string

      t.timestamps
    end
    create_table :answers do |t|
      t.column :content, :string
      t.column :question_id, :integer
      t.column :votes, :integer
    end
  end
end
