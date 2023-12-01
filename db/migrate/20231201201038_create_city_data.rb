class CreateCityData < ActiveRecord::Migration[7.0]
  def change
    create_table :city_data do |t|
      t.string :cityName
      t.string :seasonalVariation
      t.string :externalFactors
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
