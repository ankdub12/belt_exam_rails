class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
