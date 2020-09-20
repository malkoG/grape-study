class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :detail
      t.string :code
      t.index :code

      t.timestamps
    end
  end
end
