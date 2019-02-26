class AddAttachmentUploadedFileToDocs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :docs do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :docs, :uploaded_file
  end
end
