class Pin < ActiveRecord::Base
     belongs_to :user

     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     vcalidates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg"]
end