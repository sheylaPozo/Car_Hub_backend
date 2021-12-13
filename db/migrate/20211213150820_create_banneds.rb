class CreateBanneds < ActiveRecord::Migration[6.1]
  def change
    create_table :banneds do |t|

      t.timestamps
    end
  end
end
