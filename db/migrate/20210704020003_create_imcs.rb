class CreateImcs < ActiveRecord::Migration[6.1]
  def change
    create_table :imcs do |t|
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
