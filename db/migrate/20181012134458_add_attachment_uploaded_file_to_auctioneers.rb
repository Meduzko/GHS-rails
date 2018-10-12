class AddAttachmentUploadedFileToAuctioneers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :auctioneers do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :auctioneers, :uploaded_file
  end
end
