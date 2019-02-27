class Doc < ApplicationRecord
  belongs_to :user

  has_attached_file :uploaded_file,
                    :url => "/docs/get/:id", 
                    :path => "docs/:id/:basename.:extension",
                    :storage => :fog,
                    :fog_credentials => "#{Rails.root}/config/gce.yml",
                    :fog_directory => "noble-transfer"
    
  validates_attachment_size :uploaded_file, :less_than => 10.megabytes   
  validates_attachment_presence :uploaded_file
  do_not_validate_attachment_file_type :uploaded_file

  def file_name 
    uploaded_file_file_name 
  end

  def file_size 
    uploaded_file_file_size 
  end
end
