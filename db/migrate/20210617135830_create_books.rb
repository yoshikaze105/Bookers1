class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      # 以下の２行を追加
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
