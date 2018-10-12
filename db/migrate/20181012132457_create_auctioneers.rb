class CreateAuctioneers < ActiveRecord::Migration[5.2]
  def change
    create_table :auctioneers do |t|
      t.integer :doc_id
      t.string :name
      t.text :description
      t.string :document_type

      t.timestamps
    end
  end
end
