class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image,
    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
    :url =>':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename'
    
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

