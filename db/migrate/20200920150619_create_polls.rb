class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.references :survey, foreign_key: true
      t.json :response

      t.timestamps
    end
  end
end
