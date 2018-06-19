class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :code
      t.string :title
      t.string :author
      t.string :publisher
      t.boolean :lend

      t.timestamps
    end
  end
end
