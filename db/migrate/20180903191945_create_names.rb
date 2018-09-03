class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :email
      t.references :kind, index: true, foreign_key: true
      t.text :rmk

      t.timestamps null: false
    end
  end
end
