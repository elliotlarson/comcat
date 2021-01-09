class CreateStatements < ActiveRecord::Migration[6.1]
  def change
    create_table :statements do |t|
      t.text :body

      t.timestamps
    end
  end
end
