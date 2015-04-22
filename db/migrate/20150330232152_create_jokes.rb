class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :content
      t.string :comment

      t.timestamps null: false
    end
  end
end
