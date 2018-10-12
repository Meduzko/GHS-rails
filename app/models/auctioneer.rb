class Auctioneer < ApplicationRecord
  has_attached_file :uploaded_file
  validates_attachment :uploaded_file, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
    
    def self.search(term)
        if term
          where('name ILIKE ?', "%#{term}%")
          where('description ILIKE ?', "%#{term}%")
        else
          all
        end
    end
end
