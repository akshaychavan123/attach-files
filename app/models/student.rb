class Student < ApplicationRecord
    mount_uploader :docs, DocsUploader
    has_one_attached :image
end
