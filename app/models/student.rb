class Student < ApplicationRecord
    mount_uploader :docs, DocsUploader
end
