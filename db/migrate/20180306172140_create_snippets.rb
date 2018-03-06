class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.string :content, null: false
      t.integer :score, default: 0
      t.integer :ratio, default: 1
      t.timestamps
    end
  end
end
