class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :description
      t.string :question_type
      t.json :example
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
