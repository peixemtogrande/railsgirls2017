class Idea < ApplicationRecord

    has_many :comments
    mount_uploader :picture, PictureUploader

    def short_description
      if self.description.blank?
        "-"
      else
        "#{self.description[0..10]}..."
      end
    end
end
