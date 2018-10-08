class AddAttachmentDocumentToReports < ActiveRecord::Migration[5.2]
  def self.up
    change_table :reports do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :reports, :document
  end
end
