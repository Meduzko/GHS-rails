class AddAttachmentUploadedFileToDocumentsAuctioneers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :documents_auctioneers do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :documents_auctioneers, :uploaded_file
  end
end
