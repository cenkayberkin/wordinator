class CreateWorders < ActiveRecord::Migration
  def change
    create_table :worders do |t|

      t.timestamps
    end
  end
end
