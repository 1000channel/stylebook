class CreateHairStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :hair_styles do |t|
      t.integer    :gender_id,      null: false
      t.integer    :hair_length_id, null: false
      t.integer    :hair_parm_id,   null: false
      t.integer    :hair_color_id,  null: false
      t.references :user,           foreign_key: true
      #t.references :shop,           foreign_key: true
      t.timestamps
    end
  end
end
