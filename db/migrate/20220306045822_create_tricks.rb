class CreateTricks < ActiveRecord::Migration[6.1]
  # def change
  #   create_table :tricks do |t|
  #     t.string :name
  #     t.belongs_to :user, null: false, foreign_key: true
  #     t.belongs_to :category, null: false, foreign_key: true

  #     t.timestamps
  #   end
  # end
  #above is current idea, below is copied from orginal project github
  def change
    create_table :tricks do |t|
      t.string :name, :null => false
      t.index :name
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
