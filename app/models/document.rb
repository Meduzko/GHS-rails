class Document < ApplicationRecord
    has_attached_file :uploaded_file
    validates_attachment :uploaded_file, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
