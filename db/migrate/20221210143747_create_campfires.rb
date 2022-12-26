class CreateCampfires < ActiveRecord::Migration[6.1]
  def change
    create_table :campfires do |t|
      t.string :name
      t.string :gomi
      t.string :shop
      t.string :shower
      t.string :maki

      t.timestamps
    end
  end
end
